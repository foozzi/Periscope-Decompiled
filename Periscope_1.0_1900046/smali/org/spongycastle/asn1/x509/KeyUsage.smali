.class public Lorg/spongycastle/asn1/x509/KeyUsage;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aAf:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 68
    new-instance v0, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERBitString;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/KeyUsage;->aAf:Lorg/spongycastle/asn1/DERBitString;

    .line 69
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/DERBitString;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/KeyUsage;->aAf:Lorg/spongycastle/asn1/DERBitString;

    .line 75
    return-void
.end method

.method public static ʶ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/KeyUsage;
    .locals 2

    .line 41
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/KeyUsage;

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/KeyUsage;

    return-object v0

    .line 45
    :cond_0
    if-eqz p0, :cond_1

    .line 47
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyUsage;

    invoke-static {p0}, Lorg/spongycastle/asn1/DERBitString;->ʸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyUsage;-><init>(Lorg/spongycastle/asn1/DERBitString;)V

    return-object v0

    .line 50
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/x509/KeyUsage;
    .locals 1

    .line 55
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/x509/Extensions;->ʼ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/KeyUsage;->ʶ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/KeyUsage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/KeyUsage;->aAf:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getBytes()[B
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/KeyUsage;->aAf:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 100
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/KeyUsage;->aAf:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    .line 102
    array-length v0, v4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyUsage: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyUsage: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
