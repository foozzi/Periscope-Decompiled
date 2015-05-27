.class public Lorg/spongycastle/crypto/examples/DESExample;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aMA:Ljava/io/BufferedOutputStream;

.field private aMx:Z

.field private aMy:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

.field private aMz:Ljava/io/BufferedInputStream;

.field private key:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->aMx:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->aMy:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->aMz:Ljava/io/BufferedInputStream;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->aMA:Ljava/io/BufferedOutputStream;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->key:[B

    .line 106
    return-void
.end method
