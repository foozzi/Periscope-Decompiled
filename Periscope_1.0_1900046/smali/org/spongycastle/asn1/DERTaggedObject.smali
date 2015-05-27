.class public Lorg/spongycastle/asn1/DERTaggedObject;
.super Lorg/spongycastle/asn1/ASN1TaggedObject;
.source ""


# static fields
.field private static final abn:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/asn1/DERTaggedObject;->abn:[B

    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 31
    return-void
.end method

.method public constructor <init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 26
    return-void
.end method


# virtual methods
.method ex()Z
    .locals 2

    .line 35
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaD:Z

    if-nez v0, :cond_1

    .line 37
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaE:Z

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->eO()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->ex()Z

    move-result v0

    return v0

    .line 50
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method ey()I
    .locals 4

    .line 57
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaD:Z

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->eO()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Primitive;->ey()I

    move-result v3

    .line 62
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaE:Z

    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaC:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->ј(I)I

    move-result v0

    invoke-static {v3}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0

    .line 69
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 71
    iget v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaC:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->ј(I)I

    move-result v0

    add-int/2addr v0, v3

    return v0

    .line 76
    :cond_1
    iget v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaC:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->ј(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 5

    .line 84
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaD:Z

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->eO()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 88
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaE:Z

    if-eqz v0, :cond_0

    .line 90
    iget v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaC:I

    const/16 v1, 0xa0

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ו(II)V

    .line 91
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Primitive;->ey()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->Ί(I)V

    .line 92
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Primitive;->ex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const/16 v4, 0xa0

    goto :goto_0

    .line 106
    :cond_1
    const/16 v4, 0x80

    .line 109
    :goto_0
    iget v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaC:I

    invoke-virtual {p1, v4, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ו(II)V

    .line 110
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Primitive;)V

    .line 112
    :goto_1
    goto :goto_2

    .line 115
    :cond_2
    iget v0, p0, Lorg/spongycastle/asn1/DERTaggedObject;->aaC:I

    sget-object v1, Lorg/spongycastle/asn1/DERTaggedObject;->abn:[B

    const/16 v2, 0xa0

    invoke-virtual {p1, v2, v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(II[B)V

    .line 117
    :goto_2
    return-void
.end method
