(() => {
    class KYGFRAME {
        constructor() {
            this.frames = {};
            this.modulePath = '../modules';
            this.baseFrame = $('#baseFrame'); // Cache the base frame element using jQuery

            if (!this.baseFrame.length) {
                console.error('[KYGFRAME] #baseFrame element not found.');
                return;
            }

            // Listen for messages from iframes
            $(window).on('message', (e) => {
                const frameEntry = Object.entries(this.frames).find(([, { iframe }]) => iframe.contentWindow === e.originalEvent.source);
                if (frameEntry) {
                    const [name] = frameEntry;
                    this.onFrameMessage(name, e.originalEvent.data);
                } else this.onMessage(e.originalEvent.data);
            });

            // Notify server that NUI is ready
            $.post(`https://${GetParentResourceName()}/nui_ready`, '{}');
        }

        createFrame(name, url, visible = true) {
            const frame = $('<div>');
            const iframe = $('<iframe>', { src: url });

            frame.append(iframe);
            this.frames[name] = { frame, iframe: iframe[0] }; // Store the raw DOM element

            // Set initial styles
            frame.css('pointer-events', 'none');
            if (!visible) frame.hide();

            // Append to the base frame
            this.baseFrame.append(frame);

            return this.frames[name];
        }

        destroyFrame(name) {
            const frameEntry = this.frames[name];
            if (!frameEntry) {
                console.error(`[KYGFRAME] Frame "${name}" not found.`);
                return;
            }

            frameEntry.frame.remove();
            delete this.frames[name];
        }

        showFrame(name) {
            const frameEntry = this.frames[name];
            if (frameEntry) frameEntry.frame.show();
            else console.error(`[KYGFRAME] Frame "${name}" not found.`);
        }

        hideFrame(name) {
            const frameEntry = this.frames[name];
            if (frameEntry) frameEntry.frame.hide();
            else console.error(`[KYGFRAME] Frame "${name}" not found.`);
        }

        focusFrame(name) {
            Object.entries(this.frames).forEach(([key, { frame }]) => {
                frame.css('pointer-events', key === name ? 'all' : 'none');
            });

            const frameEntry = this.frames[name];
            if (frameEntry?.iframe) frameEntry.iframe.contentWindow.focus();
            else console.error(`[KYGFRAME] Frame "${name}" not found or iframe missing.`);
        }

        onMessage(msg) {
            if (!msg) return;

            if (msg.target) {
                const frameEntry = this.frames[msg.target];
                if (frameEntry) {
                    frameEntry.iframe.contentWindow.postMessage(msg.data, `nui://${GetParentResourceName()}`);
                } else {
                    console.error(`[KYGFRAME] Frame "${msg.target}" not found.`);
                }
            } else if (msg.action) {
                switch (msg.action) {
                    case 'create_frame':
                        this.createFrame(msg.name, msg.url, msg.visible);
                        break;
                    case 'destroy_frame':
                        this.destroyFrame(msg.name);
                        break;
                    case 'focus_frame':
                        this.focusFrame(msg.name);
                        break;
                    default:
                        console.warn(`[KYGFRAME] Unknown action: ${msg.action}`);
                        break;
                }
            }
        }

        onFrameMessage(name, msg) {
            $.post(`https://${GetParentResourceName()}/frame_message`, JSON.stringify({ name, msg }));
        }
    }

    // Initialize the KYGFRAME instance
    KYGFRAME = new KYGFRAME();
})();