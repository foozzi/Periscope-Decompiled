.class public Lorg/spongycastle/asn1/DERSet;
.super Lorg/spongycastle/asn1/ASN1Set;
.source ""


# instance fields
.field private abm:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Set;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSet;->abm:I

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Set;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSet;->abm:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 1

    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1Set;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSet;->abm:I

    .line 37
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/asn1/ASN1Set;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSet;->abm:I

    .line 53
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1Set;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;Z)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSet;->abm:I

    .line 46
    return-void
.end method

.method private fk()I
    .locals 4

    .line 58
    iget v0, p0, Lorg/spongycastle/asn1/DERSet;->abm:I

    if-gez v0, :cond_1

    .line 60
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERSet;->eT()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 66
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->eO()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ey()I

    move-result v0

    add-int/2addr v1, v0

    .line 67
    goto :goto_0

    .line 69
    :cond_0
    iput v1, p0, Lorg/spongycastle/asn1/DERSet;->abm:I

    .line 72
    :cond_1
    iget v0, p0, Lorg/spongycastle/asn1/DERSet;->abm:I

    return v0
.end method


# virtual methods
.method ey()I
    .locals 3

    .line 78
    invoke-direct {p0}, Lorg/spongycastle/asn1/DERSet;->fk()I

    move-result v2

    .line 80
    invoke-static {v2}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    return v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 5

    .line 95
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->eQ()Lorg/spongycastle/asn1/ASN1OutputStream;

    move-result-object v1

    .line 96
    invoke-direct {p0}, Lorg/spongycastle/asn1/DERSet;->fk()I

    move-result v2

    .line 98
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 99
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->Ί(I)V

    .line 101
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERSet;->eT()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 105
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method
