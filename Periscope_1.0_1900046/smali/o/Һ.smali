.class Lo/Һ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rT:Lo/ҫ;

.field final synthetic rU:Landroid/media/MediaCodec$CryptoException;


# direct methods
.method constructor <init>(Lo/ҫ;Landroid/media/MediaCodec$CryptoException;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lo/Һ;->rT:Lo/ҫ;

    iput-object p2, p0, Lo/Һ;->rU:Landroid/media/MediaCodec$CryptoException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 887
    iget-object v0, p0, Lo/Һ;->rT:Lo/ҫ;

    invoke-static {v0}, Lo/ҫ;->ˊ(Lo/ҫ;)Lo/ҫ$ˊ;

    move-result-object v0

    iget-object v1, p0, Lo/Һ;->rU:Landroid/media/MediaCodec$CryptoException;

    invoke-interface {v0, v1}, Lo/ҫ$ˊ;->ˋ(Landroid/media/MediaCodec$CryptoException;)V

    .line 888
    return-void
.end method
