.class public Lorg/spongycastle/asn1/BERSequence;
.super Lorg/spongycastle/asn1/ASN1Sequence;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Sequence;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    .line 32
    return-void
.end method


# virtual methods
.method ey()I
    .locals 4

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0}, Lorg/spongycastle/asn1/BERSequence;->eT()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ey()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 52
    :cond_0
    add-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 61
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 62
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/asn1/BERSequence;->eT()Ljava/util/Enumeration;

    move-result-object v1

    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 72
    return-void
.end method
