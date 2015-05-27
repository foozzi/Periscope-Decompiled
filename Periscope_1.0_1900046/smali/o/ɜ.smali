.class public Lo/ɜ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I

.field private final qH:Landroid/media/MediaCodec$CryptoInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lo/ɜ;->הּ()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/ɜ;->qH:Landroid/media/MediaCodec$CryptoInfo;

    .line 57
    return-void
.end method

.method private הּ()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 107
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    return-object v0
.end method

.method private כֿ()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 112
    iget-object v0, p0, Lo/ɜ;->qH:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lo/ɜ;->numSubSamples:I

    iget-object v2, p0, Lo/ɜ;->numBytesOfClearData:[I

    iget-object v3, p0, Lo/ɜ;->numBytesOfEncryptedData:[I

    iget-object v4, p0, Lo/ɜ;->key:[B

    iget-object v5, p0, Lo/ɜ;->iv:[B

    iget v6, p0, Lo/ɜ;->mode:I

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    .line 114
    return-void
.end method


# virtual methods
.method public set(I[I[I[B[BI)V
    .locals 2

    .line 64
    iput p1, p0, Lo/ɜ;->numSubSamples:I

    .line 65
    iput-object p2, p0, Lo/ɜ;->numBytesOfClearData:[I

    .line 66
    iput-object p3, p0, Lo/ɜ;->numBytesOfEncryptedData:[I

    .line 67
    iput-object p4, p0, Lo/ɜ;->key:[B

    .line 68
    iput-object p5, p0, Lo/ɜ;->iv:[B

    .line 69
    iput p6, p0, Lo/ɜ;->mode:I

    .line 70
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 71
    invoke-direct {p0}, Lo/ɜ;->כֿ()V

    .line 73
    :cond_0
    return-void
.end method

.method public 冖()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 102
    iget-object v0, p0, Lo/ɜ;->qH:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method
