.class Lcom/localytics/android/TestModeListView$TestModeDialog$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/TestModeListView$TestModeDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/TestModeListView$TestModeDialog;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/localytics/android/TestModeListView$TestModeDialog$2;->this$1:Lcom/localytics/android/TestModeListView$TestModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog$2;->this$1:Lcom/localytics/android/TestModeListView$TestModeDialog;

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 309
    new-instance v3, Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v0, p0, Lcom/localytics/android/TestModeListView$TestModeDialog$2;->this$1:Lcom/localytics/android/TestModeListView$TestModeDialog;

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    iget-object v1, p0, Lcom/localytics/android/TestModeListView$TestModeDialog$2;->this$1:Lcom/localytics/android/TestModeListView$TestModeDialog;

    iget-object v1, v1, Lcom/localytics/android/TestModeListView$TestModeDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v1}, Lcom/localytics/android/TestModeListView;->getActivity()Lo/ι;

    move-result-object v1

    const v2, 0x103000b

    invoke-direct {v3, v0, v1, v2}, Lcom/localytics/android/TestModeListView$MenuDialog;-><init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;I)V

    .line 310
    invoke-virtual {v3}, Lcom/localytics/android/TestModeListView$MenuDialog;->show()V

    .line 312
    :cond_0
    return-void
.end method
