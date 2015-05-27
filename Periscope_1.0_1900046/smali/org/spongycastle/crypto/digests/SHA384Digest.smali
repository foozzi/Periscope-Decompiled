.class public Lorg/spongycastle/crypto/digests/SHA384Digest;
.super Lorg/spongycastle/crypto/digests/LongDigest;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/LongDigest;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHA384Digest;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/LongDigest;-><init>(Lorg/spongycastle/crypto/digests/LongDigest;)V

    .line 37
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3

    .line 58
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA384Digest;->finish()V

    .line 60
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGk:J

    invoke-static {v0, v1, p1, p2}, Lorg/spongycastle/util/Pack;->ʻ(J[BI)V

    .line 61
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGl:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lorg/spongycastle/util/Pack;->ʻ(J[BI)V

    .line 62
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGm:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lorg/spongycastle/util/Pack;->ʻ(J[BI)V

    .line 63
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGn:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lorg/spongycastle/util/Pack;->ʻ(J[BI)V

    .line 64
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGo:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lorg/spongycastle/util/Pack;->ʻ(J[BI)V

    .line 65
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGp:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lorg/spongycastle/util/Pack;->ʻ(J[BI)V

    .line 67
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA384Digest;->reset()V

    .line 69
    const/16 v0, 0x30

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "SHA-384"

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 51
    const/16 v0, 0x30

    return v0
.end method

.method public iU()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 95
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA384Digest;)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 77
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->reset()V

    .line 83
    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGk:J

    .line 84
    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGl:J

    .line 85
    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGm:J

    .line 86
    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGn:J

    .line 87
    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGo:J

    .line 88
    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGp:J

    .line 89
    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGq:J

    .line 90
    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->aGr:J

    .line 91
    return-void
.end method

.method public ˊ(Lorg/spongycastle/util/Memoable;)V
    .locals 2

    .line 100
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    move-object v1, v0

    .line 102
    invoke-super {p0, v1}, Lorg/spongycastle/crypto/digests/LongDigest;->ˊ(Lorg/spongycastle/crypto/digests/LongDigest;)V

    .line 103
    return-void
.end method
