.class Lo/akn$if;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/akn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private bID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 267
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/akn$if;->bID:Ljava/util/HashMap;

    .line 269
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 278
    iget v1, p1, Landroid/os/Message;->what:I

    .line 279
    invoke-virtual {p0, v1}, Lo/akn$if;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0, v1}, Lo/akn$if;->removeMessages(I)V

    .line 283
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0

    .line 284
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 286
    :goto_0
    return-void
.end method

.method public ˊ(Landroid/os/Message;J)V
    .locals 3

    .line 272
    iget-object v0, p0, Lo/akn$if;->bID:Ljava/util/HashMap;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {p0, p1, p2, p3}, Lo/akn$if;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 274
    return-void
.end method
