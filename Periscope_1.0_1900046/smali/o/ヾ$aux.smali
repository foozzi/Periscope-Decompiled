.class public final Lo/ヾ$aux;
.super Lo/ヾ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ヾ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "aux"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u30fe<TT;>.if;"
    }
.end annotation


# instance fields
.field final synthetic Em:Lo/ヾ;

.field public final Ep:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lo/ヾ;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lo/ヾ$aux;->Em:Lo/ヾ;

    invoke-direct {p0, p1, p2, p4}, Lo/ヾ$if;-><init>(Lo/ヾ;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lo/ヾ$aux;->Ep:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected ᴭ()Z
    .locals 5

    :try_start_0
    iget-object v0, p0, Lo/ヾ$aux;->Ep:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v0, "GmsClient"

    const-string v1, "service probably died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :goto_0
    iget-object v0, p0, Lo/ヾ$aux;->Em:Lo/ヾ;

    invoke-virtual {v0}, Lo/ヾ;->ᘦ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lo/ヾ$aux;->Em:Lo/ヾ;

    iget-object v1, p0, Lo/ヾ$aux;->Ep:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lo/ヾ;->ˋ(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lo/ヾ$aux;->Em:Lo/ヾ;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v4}, Lo/ヾ;->ˊ(Lo/ヾ;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ヾ$aux;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ˊ(Lo/ヾ;)Lo/乀;

    move-result-object v0

    invoke-virtual {v0}, Lo/乀;->ọ()V

    iget-object v0, p0, Lo/ヾ$aux;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ᐝ(Lo/ヾ;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ძ;->ᵎ(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
