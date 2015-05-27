.class public Lorg/spongycastle/asn1/DERUniversalString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# static fields
.field private static final abb:[C


# instance fields
.field private aas:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/asn1/DERUniversalString;->abb:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/spongycastle/asn1/DERUniversalString;->aas:[B

    .line 81
    return-void
.end method


# virtual methods
.method public eM()[B
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUniversalString;->aas:[B

    return-object v0
.end method

.method ex()Z
    .locals 1

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUniversalString;->aas:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERUniversalString;->aas:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 8

    .line 85
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    new-instance v5, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v5, v4}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 91
    :try_start_0
    invoke-virtual {v5, p0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 93
    :catch_0
    move-exception v6

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error encoding BitString"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :goto_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 100
    const/4 v7, 0x0

    :goto_1
    array-length v0, v6

    if-eq v7, v0, :cond_0

    .line 102
    sget-object v0, Lorg/spongycastle/asn1/DERUniversalString;->abb:[C

    aget-byte v1, v6, v7

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    sget-object v0, Lorg/spongycastle/asn1/DERUniversalString;->abb:[C

    aget-byte v1, v6, v7

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUniversalString;->aas:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERUniversalString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERUniversalString;->eM()[B

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 134
    return-void
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 2

    .line 139
    instance-of v0, p1, Lorg/spongycastle/asn1/DERUniversalString;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUniversalString;->aas:[B

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/asn1/DERUniversalString;

    iget-object v1, v1, Lorg/spongycastle/asn1/DERUniversalString;->aas:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method
