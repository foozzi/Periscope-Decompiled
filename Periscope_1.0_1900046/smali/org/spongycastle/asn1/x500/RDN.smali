.class public Lorg/spongycastle/asn1/x500/RDN;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private awf:Lorg/spongycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 44
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 46
    invoke-virtual {v2, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 47
    invoke-virtual {v2, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 49
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->awf:Lorg/spongycastle/asn1/ASN1Set;

    .line 50
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/RDN;->awf:Lorg/spongycastle/asn1/ASN1Set;

    .line 20
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSet;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->awf:Lorg/spongycastle/asn1/ASN1Set;

    .line 65
    return-void
.end method

.method public static ᑦ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/RDN;
    .locals 2

    .line 24
    instance-of v0, p0, Lorg/spongycastle/asn1/x500/RDN;

    if-eqz v0, :cond_0

    .line 26
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x500/RDN;

    return-object v0

    .line 28
    :cond_0
    if-eqz p0, :cond_1

    .line 30
    new-instance v0, Lorg/spongycastle/asn1/x500/RDN;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Set;->ɩ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x500/RDN;-><init>(Lorg/spongycastle/asn1/ASN1Set;)V

    return-object v0

    .line 33
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->awf:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public gH()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->awf:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public gI()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->awf:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->awf:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->ᑋ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    return-object v0
.end method

.method public gJ()[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .locals 3

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->awf:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    new-array v1, v0, [Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    .line 96
    const/4 v2, 0x0

    :goto_0
    array-length v0, v1

    if-eq v2, v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->awf:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Set;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->ᑋ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    aput-object v0, v1, v2

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-object v1
.end method
