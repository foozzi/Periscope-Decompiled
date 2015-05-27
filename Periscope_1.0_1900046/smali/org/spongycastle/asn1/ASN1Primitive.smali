.class public abstract Lorg/spongycastle/asn1/ASN1Primitive;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 14
    return-void
.end method

.method public static ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 26
    new-instance v2, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v2, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 30
    :try_start_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 32
    :catch_0
    move-exception v3

    .line 34
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot recognise object in stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method eO()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    .line 60
    return-object p0
.end method

.method eP()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    .line 70
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 40
    if-ne p0, p1, :cond_0

    .line 42
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method abstract ex()Z
.end method

.method abstract ey()I
.end method

.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    .line 50
    return-object p0
.end method

.method public abstract hashCode()I
.end method

.method abstract ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
.end method

.method abstract ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
.end method
