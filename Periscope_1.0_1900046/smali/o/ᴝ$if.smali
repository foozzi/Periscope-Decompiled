.class Lo/ᴝ$if;
.super Lo/יּ;

# interfaces
.implements Lo/ᒴ$ˊ;
.implements Lo/ᒴ$ˋ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᴝ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\ufb39<Lcom/google/android/gms/common/ConnectionResult;>;Lo/\u14b4$\u02ca;Lo/\u14b4$\u02cb;"
    }
.end annotation


# instance fields
.field public final Dw:Lo/ᒴ;

.field private Dx:Z

.field private Dy:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ᒴ;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/יּ;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/ᴝ$if;->Dw:Lo/ᒴ;

    return-void
.end method

.method private ʻ(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iput-object p1, p0, Lo/ᴝ$if;->Dy:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lo/ᴝ$if;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/ᴝ$if;->isAbandoned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lo/ᴝ$if;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lo/יּ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lo/ᴝ$if;->Dw:Lo/ᒴ;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/ᒴ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᴝ$if;->Dy:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᴝ$if;->Dx:Z

    iget-object v0, p0, Lo/ᴝ$if;->Dw:Lo/ᒴ;

    invoke-interface {v0, p0}, Lo/ᒴ;->ˋ(Lo/ᒴ$ˊ;)V

    iget-object v0, p0, Lo/ᴝ$if;->Dw:Lo/ᒴ;

    invoke-interface {v0, p0}, Lo/ᒴ;->ˋ(Lo/ᒴ$ˋ;)V

    iget-object v0, p0, Lo/ᴝ$if;->Dw:Lo/ᒴ;

    invoke-interface {v0}, Lo/ᒴ;->disconnect()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    invoke-super {p0}, Lo/יּ;->onStartLoading()V

    iget-object v0, p0, Lo/ᴝ$if;->Dw:Lo/ᒴ;

    invoke-interface {v0, p0}, Lo/ᒴ;->ˊ(Lo/ᒴ$ˊ;)V

    iget-object v0, p0, Lo/ᴝ$if;->Dw:Lo/ᒴ;

    invoke-interface {v0, p0}, Lo/ᒴ;->ˊ(Lo/ᒴ$ˋ;)V

    iget-object v0, p0, Lo/ᴝ$if;->Dy:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᴝ$if;->Dy:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lo/ᴝ$if;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lo/ᴝ$if;->Dw:Lo/ᒴ;

    invoke-interface {v0}, Lo/ᒴ;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/ᴝ$if;->Dw:Lo/ᒴ;

    invoke-interface {v0}, Lo/ᒴ;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/ᴝ$if;->Dx:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/ᴝ$if;->Dw:Lo/ᒴ;

    invoke-interface {v0}, Lo/ᒴ;->connect()V

    :cond_1
    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    iget-object v0, p0, Lo/ᴝ$if;->Dw:Lo/ᒴ;

    invoke-interface {v0}, Lo/ᒴ;->disconnect()V

    return-void
.end method

.method public ˊ(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᴝ$if;->Dx:Z

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->BG:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lo/ᴝ$if;->ʻ(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public ˊ(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᴝ$if;->Dx:Z

    invoke-direct {p0, p1}, Lo/ᴝ$if;->ʻ(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public ܙ(I)V
    .locals 0

    return-void
.end method

.method public ᒰ()Z
    .locals 1

    iget-boolean v0, p0, Lo/ᴝ$if;->Dx:Z

    return v0
.end method
