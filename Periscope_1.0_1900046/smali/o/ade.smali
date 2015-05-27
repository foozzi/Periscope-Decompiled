.class public Lo/ade;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lo/ade;->mActivity:Landroid/app/Activity;

    .line 19
    return-void
.end method


# virtual methods
.method public ł(Ljava/lang/String;)V
    .locals 5

    .line 22
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/ade;->mActivity:Landroid/app/Activity;

    const-class v2, Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "e_b_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "e_p_mode"

    sget-object v2, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDy:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v4

    .line 25
    iget-object v0, p0, Lo/ade;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lo/ade;->mActivity:Landroid/app/Activity;

    const v2, 0x7f04000c

    const v3, 0x7f04000b

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public ŗ(Ljava/lang/String;)V
    .locals 5

    .line 30
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/ade;->mActivity:Landroid/app/Activity;

    const-class v2, Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "e_b_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "e_p_mode"

    sget-object v2, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v4

    .line 34
    iget-object v0, p0, Lo/ade;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lo/ade;->mActivity:Landroid/app/Activity;

    const v2, 0x7f04000c

    const v3, 0x7f04000b

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 36
    return-void
.end method
