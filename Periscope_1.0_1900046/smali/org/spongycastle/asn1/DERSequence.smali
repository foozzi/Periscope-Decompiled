.class public Lorg/spongycastle/asn1/DERSequence;
.super Lorg/spongycastle/asn1/ASN1Sequence;
.source ""


# instance fields
.field private abm:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Sequence;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSequence;->abm:I

    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSequence;->abm:I

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSequence;->abm:I

    .line 34
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DERSequence;->abm:I

    .line 43
    return-void
.end method

.method private fk()I
    .locals 4

    .line 48
    iget v0, p0, Lorg/spongycastle/asn1/DERSequence;->abm:I

    if-gez v0, :cond_1

    .line 50
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERSequence;->eT()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 56
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->eO()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ey()I

    move-result v0

    add-int/2addr v1, v0

    .line 57
    goto :goto_0

    .line 59
    :cond_0
    iput v1, p0, Lorg/spongycastle/asn1/DERSequence;->abm:I

    .line 62
    :cond_1
    iget v0, p0, Lorg/spongycastle/asn1/DERSequence;->abm:I

    return v0
.end method


# virtual methods
.method ey()I
    .locals 3

    .line 68
    invoke-direct {p0}, Lorg/spongycastle/asn1/DERSequence;->fk()I

    move-result v2

    .line 70
    invoke-static {v2}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    return v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 5

    .line 85
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->eQ()Lorg/spongycastle/asn1/ASN1OutputStream;

    move-result-object v1

    .line 86
    invoke-direct {p0}, Lorg/spongycastle/asn1/DERSequence;->fk()I

    move-result v2

    .line 88
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 89
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->Ί(I)V

    .line 91
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERSequence;->eT()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 95
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method
