.class public Lorg/spongycastle/asn1/DLTaggedObject;
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

    sput-object v0, Lorg/spongycastle/asn1/DLTaggedObject;->abn:[B

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

    .line 30
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaD:Z

    if-nez v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaE:Z

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x1

    return v0

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->eP()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->ex()Z

    move-result v0

    return v0

    .line 45
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method ey()I
    .locals 3

    .line 52
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaD:Z

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->eP()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ey()I

    move-result v2

    .line 56
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaE:Z

    if-eqz v0, :cond_0

    .line 58
    iget v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaC:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->ј(I)I

    move-result v0

    invoke-static {v2}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0

    .line 63
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 65
    iget v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaC:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->ј(I)I

    move-result v0

    add-int/2addr v0, v2

    return v0

    .line 70
    :cond_1
    iget v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaC:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->ј(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 5

    .line 78
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaD:Z

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->eP()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 82
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaE:Z

    if-eqz v0, :cond_0

    .line 84
    iget v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaC:I

    const/16 v1, 0xa0

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ו(II)V

    .line 85
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Primitive;->ey()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->Ί(I)V

    .line 86
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 94
    :cond_0
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Primitive;->ex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const/16 v4, 0xa0

    goto :goto_0

    .line 100
    :cond_1
    const/16 v4, 0x80

    .line 103
    :goto_0
    iget v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaC:I

    invoke-virtual {p1, v4, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ו(II)V

    .line 104
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Primitive;)V

    .line 106
    :goto_1
    goto :goto_2

    .line 109
    :cond_2
    iget v0, p0, Lorg/spongycastle/asn1/DLTaggedObject;->aaC:I

    sget-object v1, Lorg/spongycastle/asn1/DLTaggedObject;->abn:[B

    const/16 v2, 0xa0

    invoke-virtual {p1, v2, v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(II[B)V

    .line 111
    :goto_2
    return-void
.end method
