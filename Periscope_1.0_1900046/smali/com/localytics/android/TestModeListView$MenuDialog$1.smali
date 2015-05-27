.class Lcom/localytics/android/TestModeListView$MenuDialog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/TestModeListView$MenuDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/TestModeListView$MenuDialog;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
        }
    .end annotation

    .line 483
    if-nez p3, :cond_0

    .line 485
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/localytics/android/Constants;->setTestModeEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v0}, Lcom/localytics/android/TestModeListView;->dismiss()V

    goto/16 :goto_0

    .line 488
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_5

    .line 492
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    move-object v2, v0

    .line 493
    if-eqz v2, :cond_1

    .line 495
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_1
    goto :goto_0

    .line 499
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 501
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_5

    .line 503
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    move-object v2, v0

    .line 504
    if-eqz v2, :cond_3

    .line 506
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_3
    goto :goto_0

    .line 510
    :cond_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    .line 512
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_5

    .line 514
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v0, v0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    # getter for: Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    move-object v2, v0

    .line 515
    if-eqz v2, :cond_5

    .line 517
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    invoke-virtual {v0}, Lcom/localytics/android/TestModeListView$MenuDialog;->dismiss()V

    .line 523
    return-void
.end method
