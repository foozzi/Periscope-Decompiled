.class public abstract Lorg/spongycastle/asn1/x509/X509NameEntryConverter;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected ʻ(Ljava/lang/String;I)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 7

    .line 65
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->ʰ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    .line 67
    const/4 v4, 0x0

    :goto_0
    array-length v0, v3

    if-eq v4, v0, :cond_2

    .line 69
    mul-int/lit8 v0, v4, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 70
    mul-int/lit8 v0, v4, 0x2

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 72
    const/16 v0, 0x61

    if-ge v5, v0, :cond_0

    .line 74
    add-int/lit8 v0, v5, -0x30

    shl-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    goto :goto_1

    .line 78
    :cond_0
    add-int/lit8 v0, v5, -0x61

    add-int/lit8 v0, v0, 0xa

    shl-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    .line 80
    :goto_1
    const/16 v0, 0x61

    if-ge v6, v0, :cond_1

    .line 82
    aget-byte v0, v3, v4

    add-int/lit8 v1, v6, -0x30

    int-to-byte v1, v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    goto :goto_2

    .line 86
    :cond_1
    aget-byte v0, v3, v4

    add-int/lit8 v1, v6, -0x61

    add-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    .line 67
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    :cond_2
    new-instance v4, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v3}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 92
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public abstract ˏ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
.end method
