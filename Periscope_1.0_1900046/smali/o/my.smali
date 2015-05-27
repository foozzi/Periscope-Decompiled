.class Lo/my;
.super Lo/ms;
.source ""


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/lz;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/lz<Lo/mr;>;I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lo/ms;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/lz;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public ˌ(Landroid/app/Activity;)Z
    .locals 2

    .line 26
    invoke-virtual {p0, p1}, Lo/my;->ˍ(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lo/my;->Qx:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method ˍ(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    .line 31
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lo/mu;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string v0, "auth_config"

    invoke-virtual {p0}, Lo/my;->be()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    return-object v2
.end method
