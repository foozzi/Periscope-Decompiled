.class public Lorg/spongycastle/asn1/DERUTF8String;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field private aas:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 89
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->ɿ(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/DERUTF8String;->aas:[B

    .line 90
    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/spongycastle/asn1/DERUTF8String;->aas:[B

    .line 82
    return-void
.end method


# virtual methods
.method ex()Z
    .locals 1

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 2

    .line 127
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUTF8String;->aas:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERUTF8String;->aas:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUTF8String;->aas:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->і([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUTF8String;->aas:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUTF8String;->aas:[B

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 134
    return-void
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 109
    instance-of v0, p1, Lorg/spongycastle/asn1/DERUTF8String;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/DERUTF8String;

    move-object v2, v0

    .line 116
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUTF8String;->aas:[B

    iget-object v1, v2, Lorg/spongycastle/asn1/DERUTF8String;->aas:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method
