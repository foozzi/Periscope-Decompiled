.class final Lo/ᖨ$ˋ;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᖨ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "\u02cb"
.end annotation


# instance fields
.field final synthetic Dk:Lo/ᖨ;


# direct methods
.method constructor <init>(Lo/ᖨ;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lo/ᖨ$ˋ;->Dk:Lo/ᖨ;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lo/ᖨ$ˋ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ʿ(Lo/ᖨ;)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lo/ᖨ$ˋ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ʾ(Lo/ᖨ;)V

    goto :goto_1

    :goto_0
    const-string v0, "GoogleApiClientImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method
