.class public Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private bid:I

.field private bif:[[S

.field private big:[[S

.field private bih:[S


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bid:I

    .line 57
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bif:[[S

    .line 58
    iput-object p3, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->big:[[S

    .line 59
    iput-object p4, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bih:[S

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;)V
    .locals 4

    .line 76
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->qD()I

    move-result v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->qE()[[S

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->qF()[[S

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->qG()[S

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(I[[S[[S[S)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;)V
    .locals 4

    .line 69
    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->qD()I

    move-result v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->qE()[[S

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->qF()[[S

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->qG()[S

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(I[[S[[S[S)V

    .line 71
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 127
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    if-nez v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    move-object v2, v0

    .line 133
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bid:I

    invoke-virtual {v2}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->qD()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bif:[[S

    invoke-virtual {v2}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->qE()[[S

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˋ([[S[[S)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->big:[[S

    invoke-virtual {v2}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->qF()[[S

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˋ([[S[[S)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bih:[S

    invoke-virtual {v2}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->qG()[S

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 155
    const-string v0, "Rainbow"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    .line 165
    new-instance v4, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;

    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bid:I

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bif:[[S

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->big:[[S

    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bih:[S

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;-><init>(I[[S[[S[S)V

    .line 166
    new-instance v5, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->bdP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v5, v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 168
    invoke-static {v5, v4}, Lorg/spongycastle/pqc/jcajce/provider/util/KeyUtil;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 160
    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 141
    iget v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bid:I

    .line 143
    mul-int/lit8 v0, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bif:[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->ˎ([[S)I

    move-result v1

    add-int v2, v0, v1

    .line 144
    mul-int/lit8 v0, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->big:[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->ˎ([[S)I

    move-result v1

    add-int v2, v0, v1

    .line 145
    mul-int/lit8 v0, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bih:[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([S)I

    move-result v1

    add-int v2, v0, v1

    .line 147
    return v2
.end method

.method public qD()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bid:I

    return v0
.end method

.method public qE()[[S
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bif:[[S

    return-object v0
.end method

.method public qF()[[S
    .locals 3

    .line 100
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->big:[[S

    array-length v0, v0

    new-array v1, v0, [[S

    .line 102
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->big:[[S

    array-length v0, v0

    if-eq v2, v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->big:[[S

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->ᐝ([S)[S

    move-result-object v0

    aput-object v0, v1, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-object v1
.end method

.method public qG()[S
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->bih:[S

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->ᐝ([S)[S

    move-result-object v0

    return-object v0
.end method
