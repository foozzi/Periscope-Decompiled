.class public Lorg/spongycastle/crypto/tls/Certificate;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final aSU:Lorg/spongycastle/crypto/tls/Certificate;


# instance fields
.field protected aSV:[Lorg/spongycastle/asn1/x509/Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lorg/spongycastle/crypto/tls/Certificate;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/spongycastle/asn1/x509/Certificate;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/Certificate;-><init>([Lorg/spongycastle/asn1/x509/Certificate;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/Certificate;->aSU:Lorg/spongycastle/crypto/tls/Certificate;

    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/Certificate;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certificateList\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/Certificate;->aSV:[Lorg/spongycastle/asn1/x509/Certificate;

    .line 39
    return-void
.end method

.method public static ˌ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;
    .locals 7

    .line 116
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ՙ(Ljava/io/InputStream;)I

    move-result v1

    .line 117
    if-nez v1, :cond_0

    .line 119
    sget-object v0, Lorg/spongycastle/crypto/tls/Certificate;->aSU:Lorg/spongycastle/crypto/tls/Certificate;

    return-object v0

    .line 122
    :cond_0
    invoke-static {v1, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(ILjava/io/InputStream;)[B

    move-result-object v2

    .line 124
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 126
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 127
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    .line 129
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᵎ(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 130
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐢ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 131
    invoke-static {v6}, Lorg/spongycastle/asn1/x509/Certificate;->ⅰ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 132
    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v5, v0, [Lorg/spongycastle/asn1/x509/Certificate;

    .line 135
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 137
    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x509/Certificate;

    aput-object v0, v5, v6

    .line 135
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 139
    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/tls/Certificate;

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/tls/Certificate;-><init>([Lorg/spongycastle/asn1/x509/Certificate;)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 6

    .line 86
    new-instance v2, Ljava/util/Vector;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Certificate;->aSV:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    .line 88
    const/4 v3, 0x0

    .line 89
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Certificate;->aSV:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Certificate;->aSV:[Lorg/spongycastle/asn1/x509/Certificate;

    aget-object v0, v0, v4

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/Certificate;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    .line 92
    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    array-length v0, v5

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v3, v0

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᵠ(I)V

    .line 97
    invoke-static {v3, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʼ(ILjava/io/OutputStream;)V

    .line 99
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 101
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v5, v0

    .line 102
    invoke-static {v5, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˏ([BLjava/io/OutputStream;)V

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 104
    :cond_1
    return-void
.end method

.method public getLength()I
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Certificate;->aSV:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v0, v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Certificate;->aSV:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lP()[Lorg/spongycastle/asn1/x509/Certificate;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/Certificate;->lQ()[Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    return-object v0
.end method

.method protected lQ()[Lorg/spongycastle/asn1/x509/Certificate;
    .locals 5

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Certificate;->aSV:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v0, v0

    new-array v4, v0, [Lorg/spongycastle/asn1/x509/Certificate;

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Certificate;->aSV:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    return-object v4
.end method

.method public ץ(I)Lorg/spongycastle/asn1/x509/Certificate;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Certificate;->aSV:[Lorg/spongycastle/asn1/x509/Certificate;

    aget-object v0, v0, p1

    return-object v0
.end method
