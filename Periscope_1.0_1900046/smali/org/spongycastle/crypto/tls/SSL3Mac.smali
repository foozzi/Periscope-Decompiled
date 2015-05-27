.class public Lorg/spongycastle/crypto/tls/SSL3Mac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# static fields
.field static final aUp:[B

.field static final aUq:[B


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aUr:[B

.field private aUs:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const/16 v0, 0x36

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/SSL3Mac;->ˎ(BI)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUp:[B

    .line 23
    const/16 v0, 0x5c

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/SSL3Mac;->ˎ(BI)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUq:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 40
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 42
    const/16 v0, 0x28

    iput v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUs:I

    goto :goto_0

    .line 46
    :cond_0
    const/16 v0, 0x30

    iput v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUs:I

    .line 48
    :goto_0
    return-void
.end method

.method private static ˎ(BI)[B
    .locals 1

    .line 110
    new-array v0, p1, [B

    .line 111
    invoke-static {v0, p0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 112
    return-object v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v4, v0, [B

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUr:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUr:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    sget-object v1, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUq:[B

    iget v2, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUs:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 91
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    move-result v5

    .line 93
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SSL3Mac;->reset()V

    .line 95
    return v5
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SSL3MAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iO()I
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 4

    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUr:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUr:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 105
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    sget-object v1, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUp:[B

    iget v2, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUs:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 106
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 75
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 80
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 62
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->aUr:[B

    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SSL3Mac;->reset()V

    .line 65
    return-void
.end method
