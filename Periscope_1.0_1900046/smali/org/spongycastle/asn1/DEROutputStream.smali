.class public Lorg/spongycastle/asn1/DEROutputStream;
.super Lorg/spongycastle/asn1/ASN1OutputStream;
.source ""


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    return-void
.end method


# virtual methods
.method eQ()Lorg/spongycastle/asn1/ASN1OutputStream;
    .locals 0

    .line 34
    return-object p0
.end method

.method eR()Lorg/spongycastle/asn1/ASN1OutputStream;
    .locals 0

    .line 39
    return-object p0
.end method

.method public ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2

    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->eO()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1Primitive;->ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :goto_0
    return-void
.end method