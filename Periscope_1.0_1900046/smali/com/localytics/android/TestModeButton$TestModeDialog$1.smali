.class Lcom/localytics/android/TestModeButton$TestModeDialog$1;
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
.field final synthetic this$1:Lcom/localytics/android/TestModeButton$TestModeDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/TestModeButton$TestModeDialog;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$1;->this$1:Lcom/localytics/android/TestModeButton$TestModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$1;->this$1:Lcom/localytics/android/TestModeButton$TestModeDialog;

    # getter for: Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->access$100(Lcom/localytics/android/TestModeButton$TestModeDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$1;->this$1:Lcom/localytics/android/TestModeButton$TestModeDialog;

    # getter for: Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;
    invoke-static {v1}, Lcom/localytics/android/TestModeButton$TestModeDialog;->access$000(Lcom/localytics/android/TestModeButton$TestModeDialog;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$1;->this$1:Lcom/localytics/android/TestModeButton$TestModeDialog;

    iget-object v0, v0, Lcom/localytics/android/TestModeButton$TestModeDialog;->this$0:Lcom/localytics/android/TestModeButton;

    # getter for: Lcom/localytics/android/TestModeButton;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/TestModeButton;->access$200(Lcom/localytics/android/TestModeButton;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$1;->this$1:Lcom/localytics/android/TestModeButton$TestModeDialog;

    iget-object v0, v0, Lcom/localytics/android/TestModeButton$TestModeDialog;->this$0:Lcom/localytics/android/TestModeButton;

    # getter for: Lcom/localytics/android/TestModeButton;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/TestModeButton;->access$200(Lcom/localytics/android/TestModeButton;)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    move-object v2, v0

    .line 255
    if-eqz v2, :cond_0

    .line 257
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    return-void
.end method