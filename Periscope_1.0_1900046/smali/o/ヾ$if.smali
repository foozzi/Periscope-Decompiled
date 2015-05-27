.class abstract Lo/ヾ$if;
.super Lo/ヾ$ˋ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ヾ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u30fe<TT;>.\u02cb<Ljava/lang/Boolean;>;"
    }
.end annotation


# instance fields
.field public final El:Landroid/os/Bundle;

.field final synthetic Em:Lo/ヾ;

.field public final statusCode:I


# direct methods
.method protected constructor <init>(Lo/ヾ;ILandroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/ヾ$ˋ;-><init>(Lo/ヾ;Ljava/lang/Object;)V

    iput p2, p0, Lo/ヾ$if;->statusCode:I

    iput-object p3, p0, Lo/ヾ$if;->El:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected ʼ(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ˊ(Lo/ヾ;)Lo/乀;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/乀;->ʽ(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected ˊ(Ljava/lang/Boolean;)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/ヾ;->ˊ(Lo/ヾ;ILandroid/os/IInterface;)V

    return-void

    :cond_0
    iget v0, p0, Lo/ヾ$if;->statusCode:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lo/ヾ$if;->ᴭ()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ʻ(Lo/ヾ;)Lo/ヾ$ˏ;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ʼ(Lo/ヾ;)Lo/宀;

    move-result-object v0

    iget-object v1, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    invoke-virtual {v1}, Lo/ヾ;->ᘣ()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    invoke-static {v2}, Lo/ヾ;->ʻ(Lo/ヾ;)Lo/ヾ$ˏ;

    move-result-object v2

    iget-object v3, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    invoke-virtual {v3}, Lo/ヾ;->ᘧ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/宀;->ˋ(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v0, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ヾ;->ˊ(Lo/ヾ;Lo/ヾ$ˏ;)Lo/ヾ$ˏ;

    :cond_1
    iget-object v0, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/ヾ;->ˊ(Lo/ヾ;ILandroid/os/IInterface;)V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lo/ヾ$if;->ʼ(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/ヾ;->ˊ(Lo/ヾ;ILandroid/os/IInterface;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    const/4 v4, 0x0

    iget-object v0, p0, Lo/ヾ$if;->El:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ヾ$if;->El:Landroid/os/Bundle;

    const-string v1, "pendingIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v4, v0

    :cond_2
    iget-object v0, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ʻ(Lo/ヾ;)Lo/ヾ$ˏ;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ʼ(Lo/ヾ;)Lo/宀;

    move-result-object v0

    iget-object v1, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    invoke-virtual {v1}, Lo/ヾ;->ᘣ()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    invoke-static {v2}, Lo/ヾ;->ʻ(Lo/ヾ;)Lo/ヾ$ˏ;

    move-result-object v2

    iget-object v3, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    invoke-virtual {v3}, Lo/ヾ;->ᘧ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/宀;->ˋ(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v0, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ヾ;->ˊ(Lo/ヾ;Lo/ヾ$ˏ;)Lo/ヾ$ˏ;

    :cond_3
    iget-object v0, p0, Lo/ヾ$if;->Em:Lo/ヾ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/ヾ;->ˊ(Lo/ヾ;ILandroid/os/IInterface;)V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget v1, p0, Lo/ヾ$if;->statusCode:I

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lo/ヾ$if;->ʼ(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_4
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method protected synthetic ᒽ(Ljava/lang/Object;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lo/ヾ$if;->ˊ(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected abstract ᴭ()Z
.end method

.method protected Ṭ()V
    .locals 0

    return-void
.end method
