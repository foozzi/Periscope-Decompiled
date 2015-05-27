.class public Lorg/spongycastle/asn1/cms/GCMParameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aeu:[B

.field private aev:I


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/GCMParameters;->aeu:[B

    .line 61
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/cms/GCMParameters;->aev:I

    goto :goto_0

    .line 67
    :cond_0
    const/16 v0, 0xc

    iput v0, p0, Lorg/spongycastle/asn1/cms/GCMParameters;->aev:I

    .line 69
    :goto_0
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 75
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/GCMParameters;->aeu:[B

    .line 76
    iput p2, p0, Lorg/spongycastle/asn1/cms/GCMParameters;->aev:I

    .line 77
    return-void
.end method

.method public static ˁ(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/GCMParameters;
    .locals 2

    .line 44
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/GCMParameters;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/cms/GCMParameters;

    return-object v0

    .line 48
    :cond_0
    if-eqz p0, :cond_1

    .line 50
    new-instance v0, Lorg/spongycastle/asn1/cms/GCMParameters;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/GCMParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 53
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 91
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 93
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/GCMParameters;->aeu:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 95
    iget v0, p0, Lorg/spongycastle/asn1/cms/GCMParameters;->aev:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 97
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/spongycastle/asn1/cms/GCMParameters;->aev:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 100
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fn()[B
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/GCMParameters;->aeu:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method

.method public fo()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/spongycastle/asn1/cms/GCMParameters;->aev:I

    return v0
.end method
