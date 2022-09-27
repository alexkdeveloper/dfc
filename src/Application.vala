public class DFC.Application : Gtk.Application {
    private MainWindow app_window;

    public Application () {
        Object (
            flags: ApplicationFlags.FLAGS_NONE,
            application_id: "com.github.alexkdeveloper.dfc"
        );
    }

    protected override void activate () {
        if (get_windows ().length () > 0) {
            app_window.present ();
            return;
        }

        app_window = new MainWindow (this);
        app_window.show_all ();
    }

    public static int main (string[] args) {
	Intl.bindtextdomain (Config.GETTEXT_PACKAGE, Config.LOCALEDIR);
        Intl.bind_textdomain_codeset (Config.GETTEXT_PACKAGE, "UTF-8");
        Intl.textdomain (Config.GETTEXT_PACKAGE);
        var app = new DFC.Application ();
        return app.run (args);
    }
}
