.class public Lcom/twitter/sdk/android/core/identity/ShareEmailClient;
.super Lo/mi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/identity/ShareEmailClient$EmailService;
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/mr;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lo/mi;-><init>(Lo/mg;)V

    .line 24
    return-void
.end method


# virtual methods
.method public ˊ(Lo/lz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/lz<Lo/oo;>;)V"
        }
    .end annotation

    .line 32
    const-class v0, Lcom/twitter/sdk/android/core/identity/ShareEmailClient$EmailService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/identity/ShareEmailClient;->ˌ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/identity/ShareEmailClient$EmailService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/identity/ShareEmailClient$EmailService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Lo/lz;)V

    .line 33
    return-void
.end method
