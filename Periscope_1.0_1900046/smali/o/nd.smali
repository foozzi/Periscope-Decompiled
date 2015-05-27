.class Lo/nd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final QN:Lcom/twitter/sdk/android/core/identity/ShareEmailClient;

.field private final QO:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/identity/ShareEmailClient;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/nd;->QN:Lcom/twitter/sdk/android/core/identity/ShareEmailClient;

    .line 23
    iput-object p2, p0, Lo/nd;->QO:Landroid/os/ResultReceiver;

    .line 24
    return-void
.end method


# virtual methods
.method public bu()V
    .locals 2

    .line 27
    iget-object v0, p0, Lo/nd;->QN:Lcom/twitter/sdk/android/core/identity/ShareEmailClient;

    invoke-virtual {p0}, Lo/nd;->bv()Lo/lz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/identity/ShareEmailClient;->ˊ(Lo/lz;)V

    .line 28
    return-void
.end method

.method bv()Lo/lz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/lz<Lo/oo;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lo/ne;

    invoke-direct {v0, p0}, Lo/ne;-><init>(Lo/nd;)V

    return-object v0
.end method

.method public bw()V
    .locals 3

    .line 72
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v0, "msg"

    const-string v1, "The user chose not to share their email address at this time."

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 75
    iget-object v0, p0, Lo/nd;->QO:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method ˊ(Lo/oo;)V
    .locals 2

    .line 48
    iget-object v0, p1, Lo/oo;->SV:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lo/mo;

    const-string v1, "Your application may not have access to email addresses or the user may not have an email address. To request access, please visit https://support.twitter.com/forms/platform."

    invoke-direct {v0, v1}, Lo/mo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/nd;->ˋ(Lo/mo;)V

    goto :goto_0

    .line 52
    :cond_0
    const-string v0, ""

    iget-object v1, p1, Lo/oo;->SV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lo/mo;

    const-string v1, "This user does not have an email address."

    invoke-direct {v0, v1}, Lo/mo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/nd;->ˋ(Lo/mo;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p1, Lo/oo;->SV:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lo/nd;->ᵞ(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void
.end method

.method ˋ(Lo/mo;)V
    .locals 3

    .line 66
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string v0, "error"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 68
    iget-object v0, p0, Lo/nd;->QO:Landroid/os/ResultReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method ᵞ(Ljava/lang/String;)V
    .locals 3

    .line 60
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v0, "email"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lo/nd;->QO:Landroid/os/ResultReceiver;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 63
    return-void
.end method
