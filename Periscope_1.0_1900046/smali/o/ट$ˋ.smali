.class Lo/ट$ˋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ס$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ट;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation


# instance fields
.field final synthetic Bj:Lo/ट;

.field private final Bk:Lo/ٺ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u067a<TT;>;"
        }
    .end annotation
.end field

.field private final Bl:Landroid/os/Looper;

.field private final Bm:Lo/ट$ˊ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u091f$\u02ca<TT;>;"
        }
    .end annotation
.end field

.field private final Bn:Lo/ס;


# direct methods
.method public constructor <init>(Lo/ट;Lo/ٺ;Landroid/os/Looper;Lo/ट$ˊ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u067a<TT;>;Landroid/os/Looper;Lo/\u091f$\u02ca<TT;>;)V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lo/ट$ˋ;->Bj:Lo/ट;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, Lo/ट$ˋ;->Bk:Lo/ٺ;

    .line 314
    iput-object p3, p0, Lo/ट$ˋ;->Bl:Landroid/os/Looper;

    .line 315
    iput-object p4, p0, Lo/ट$ˋ;->Bm:Lo/ट$ˊ;

    .line 316
    new-instance v0, Lo/ס;

    const-string v1, "manifestLoader:single"

    invoke-direct {v0, v1}, Lo/ס;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/ट$ˋ;->Bn:Lo/ס;

    .line 317
    return-void
.end method

.method private ɢ()V
    .locals 1

    .line 355
    iget-object v0, p0, Lo/ट$ˋ;->Bn:Lo/ס;

    invoke-virtual {v0}, Lo/ס;->release()V

    .line 356
    return-void
.end method


# virtual methods
.method public startLoading()V
    .locals 3

    .line 320
    iget-object v0, p0, Lo/ट$ˋ;->Bn:Lo/ס;

    iget-object v1, p0, Lo/ट$ˋ;->Bl:Landroid/os/Looper;

    iget-object v2, p0, Lo/ट$ˋ;->Bk:Lo/ٺ;

    invoke-virtual {v0, v1, v2, p0}, Lo/ס;->ˊ(Landroid/os/Looper;Lo/ס$ˋ;Lo/ס$if;)V

    .line 321
    return-void
.end method

.method public ˊ(Lo/ס$ˋ;)V
    .locals 3

    .line 326
    :try_start_0
    iget-object v0, p0, Lo/ट$ˋ;->Bk:Lo/ٺ;

    invoke-virtual {v0}, Lo/ٺ;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 327
    iget-object v0, p0, Lo/ट$ˋ;->Bj:Lo/ट;

    invoke-virtual {v0, v1}, Lo/ट;->ᐟ(Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lo/ट$ˋ;->Bm:Lo/ट$ˊ;

    invoke-interface {v0, v1}, Lo/ट$ˊ;->ᐡ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-direct {p0}, Lo/ट$ˋ;->ɢ()V

    .line 331
    goto :goto_0

    .line 330
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lo/ट$ˋ;->ɢ()V

    throw v2

    .line 332
    :goto_0
    return-void
.end method

.method public ˊ(Lo/ס$ˋ;Ljava/io/IOException;)V
    .locals 2

    .line 348
    :try_start_0
    iget-object v0, p0, Lo/ट$ˋ;->Bm:Lo/ट$ˊ;

    invoke-interface {v0, p2}, Lo/ट$ˊ;->ˏ(Ljava/io/IOException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-direct {p0}, Lo/ट$ˋ;->ɢ()V

    .line 351
    goto :goto_0

    .line 350
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lo/ट$ˋ;->ɢ()V

    throw v1

    .line 352
    :goto_0
    return-void
.end method

.method public ˋ(Lo/ס$ˋ;)V
    .locals 4

    .line 338
    :try_start_0
    new-instance v2, Ljava/io/IOException;

    const-string v0, "Load cancelled"

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v2, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    iget-object v0, p0, Lo/ट$ˋ;->Bm:Lo/ट$ˊ;

    invoke-interface {v0, v2}, Lo/ट$ˊ;->ˏ(Ljava/io/IOException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-direct {p0}, Lo/ट$ˋ;->ɢ()V

    .line 342
    goto :goto_0

    .line 341
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lo/ट$ˋ;->ɢ()V

    throw v3

    .line 343
    :goto_0
    return-void
.end method
