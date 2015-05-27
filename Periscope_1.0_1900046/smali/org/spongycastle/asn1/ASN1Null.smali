.class public abstract Lorg/spongycastle/asn1/ASN1Null;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 54
    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "NULL"

    return-object v0
.end method

.method abstract ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1

    .line 60
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Null;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    return v0

    .line 65
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
