#include <gtk/gtk.h>
#include "libuigtk.h"
#include "master.h"

static void print_hello(GtkWidget *widget, gpointer data) {
	g_print("Hello World\n");
}



void start(void) {

	if (!UIGTK_start("gsqlite.ui")) exit(1);

	UIGTK_signal("gtk_main_quit", gtk_main_quit);
	UIGTK_signal("print_hello", print_hello);

	if (!UIGTK_run()) exit(1);
}
