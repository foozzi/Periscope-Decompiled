.class public Lorg/spongycastle/asn1/pkcs/MacData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field aqf:Lorg/spongycastle/asn1/x509/DigestInfo;

.field aqg:[B

.field aqh:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/pkcs/MacData;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/DigestInfo;->ﯦ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DigestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqf:Lorg/spongycastle/asn1/x509/DigestInfo;

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqg:[B

    .line 46
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 48
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqh:Ljava/math/BigInteger;

    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/pkcs/MacData;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqh:Ljava/math/BigInteger;

    .line 54
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/DigestInfo;[BI)V
    .locals 2

    .line 60
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqf:Lorg/spongycastle/asn1/x509/DigestInfo;

    .line 62
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqg:[B

    .line 63
    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqh:Ljava/math/BigInteger;

    .line 64
    return-void
.end method

.method public static ᵞ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/MacData;
    .locals 2

    .line 27
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/MacData;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/MacData;

    return-object v0

    .line 31
    :cond_0
    if-eqz p0, :cond_1

    .line 33
    new-instance v0, Lorg/spongycastle/asn1/pkcs/MacData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/MacData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 94
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqf:Lorg/spongycastle/asn1/x509/DigestInfo;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 97
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqg:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqh:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/MacData;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqh:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 104
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fM()Lorg/spongycastle/asn1/x509/DigestInfo;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqf:Lorg/spongycastle/asn1/x509/DigestInfo;

    return-object v0
.end method

.method public fN()Ljava/math/BigInteger;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqh:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/MacData;->aqg:[B

    return-object v0
.end method
