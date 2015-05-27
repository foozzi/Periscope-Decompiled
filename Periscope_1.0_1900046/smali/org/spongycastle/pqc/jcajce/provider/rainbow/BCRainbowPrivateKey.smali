.class public Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PrivateKey;


# instance fields
.field private bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

.field private bhU:[[S

.field private bhV:[S

.field private bhX:[[S

.field private bhY:[S

.field private bhZ:[I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;)V
    .locals 7

    .line 90
    move-object v0, p0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->qx()[[S

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->qy()[S

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->qA()[[S

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->qz()[S

    move-result-object v4

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->qC()[I

    move-result-object v5

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->qB()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;)V
    .locals 7

    .line 83
    move-object v0, p0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->qx()[[S

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->qy()[S

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->qA()[[S

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->qz()[S

    move-result-object v4

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->qC()[I

    move-result-object v5

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->qB()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    .line 85
    return-void
.end method

.method public constructor <init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhU:[[S

    .line 69
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhV:[S

    .line 70
    iput-object p3, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhX:[[S

    .line 71
    iput-object p4, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhY:[S

    .line 72
    iput-object p5, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhZ:[I

    .line 73
    iput-object p6, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    .line 74
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 161
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    if-nez v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    move-object v2, v0

    .line 167
    const/4 v3, 0x1

    .line 169
    if-eqz v3, :cond_2

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhU:[[S

    invoke-virtual {v2}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qx()[[S

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˋ([[S[[S)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 170
    :goto_0
    if-eqz v3, :cond_3

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhX:[[S

    invoke-virtual {v2}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qA()[[S

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˋ([[S[[S)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 171
    :goto_1
    if-eqz v3, :cond_4

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhV:[S

    invoke-virtual {v2}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qy()[S

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 172
    :goto_2
    if-eqz v3, :cond_5

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhY:[S

    invoke-virtual {v2}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qz()[S

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 173
    :goto_3
    if-eqz v3, :cond_6

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhZ:[I

    invoke-virtual {v2}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qC()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 174
    :goto_4
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    array-length v0, v0

    invoke-virtual {v2}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qB()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_7

    .line 176
    const/4 v0, 0x0

    return v0

    .line 178
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    array-length v0, v0

    add-int/lit8 v4, v0, -0x1

    :goto_5
    if-ltz v4, :cond_8

    .line 180
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    aget-object v0, v0, v4

    invoke-virtual {v2}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->qB()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->equals(Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v3, v0

    .line 178
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 182
    :cond_8
    return v3
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 209
    const-string v0, "Rainbow"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    .line 214
    new-instance v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhU:[[S

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhV:[S

    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhX:[[S

    iget-object v4, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhY:[S

    iget-object v5, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhZ:[I

    iget-object v6, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    move-object v7, v0

    .line 219
    :try_start_0
    new-instance v9, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->bdP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v9, v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 220
    new-instance v8, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-direct {v8, v9, v7}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    goto :goto_0

    .line 222
    :catch_0
    move-exception v9

    .line 224
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 225
    const/4 v0, 0x0

    return-object v0

    .line 229
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 230
    return-object v9

    .line 232
    :catch_1
    move-exception v9

    .line 234
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 241
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 187
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    array-length v2, v0

    .line 189
    mul-int/lit8 v0, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhU:[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->ˎ([[S)I

    move-result v1

    add-int v2, v0, v1

    .line 190
    mul-int/lit8 v0, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhV:[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([S)I

    move-result v1

    add-int v2, v0, v1

    .line 191
    mul-int/lit8 v0, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhX:[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->ˎ([[S)I

    move-result v1

    add-int v2, v0, v1

    .line 192
    mul-int/lit8 v0, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhY:[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([S)I

    move-result v1

    add-int v2, v0, v1

    .line 193
    mul-int/lit8 v0, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhZ:[I

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([I)I

    move-result v1

    add-int v2, v0, v1

    .line 195
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    array-length v0, v0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 197
    mul-int/lit8 v0, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 195
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 201
    :cond_0
    return v2
.end method

.method public qA()[[S
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhX:[[S

    return-object v0
.end method

.method public qB()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    return-object v0
.end method

.method public qC()[I
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhZ:[I

    return-object v0
.end method

.method public qx()[[S
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhU:[[S

    return-object v0
.end method

.method public qy()[S
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhV:[S

    return-object v0
.end method

.method public qz()[S
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->bhY:[S

    return-object v0
.end method
