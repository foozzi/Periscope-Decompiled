.class Lo/ε;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qR:Lo/Ϋ;


# direct methods
.method constructor <init>(Lo/Ϋ;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lo/ε;->qR:Lo/Ϋ;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lo/ε;->qR:Lo/Ϋ;

    invoke-virtual {v0, p1}, Lo/Ϋ;->ˊ(Landroid/os/Message;)V

    .line 67
    return-void
.end method
