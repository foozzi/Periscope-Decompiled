.class public Lorg/spongycastle/jce/provider/PEMUtil;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final aXZ:Ljava/lang/String;

.field private final aYa:Ljava/lang/String;

.field private final aYb:Ljava/lang/String;

.field private final aYc:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PEMUtil;->aXZ:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN X509 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PEMUtil;->aYa:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PEMUtil;->aYb:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END X509 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PEMUtil;->aYc:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private ﹶ(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 32
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    move v2, v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v0, 0xa

    if-eq v2, v0, :cond_2

    if-ltz v2, :cond_2

    .line 38
    const/16 v0, 0xd

    if-ne v2, v0, :cond_1

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    int-to-char v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 46
    :cond_2
    if-ltz v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :cond_3
    if-gez v2, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method ﹺ(Ljava/io/InputStream;)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 5

    .line 61
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/jce/provider/PEMUtil;->ﹶ(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PEMUtil;->aXZ:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/jce/provider/PEMUtil;->aYa:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    .line 71
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/spongycastle/jce/provider/PEMUtil;->ﹶ(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 73
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PEMUtil;->aYb:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/spongycastle/jce/provider/PEMUtil;->aYc:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 81
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Base64;->ᵥ(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 84
    instance-of v0, v4, Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_4

    .line 86
    new-instance v0, Ljava/io/IOException;

    const-string v1, "malformed PEM data encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_4
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0

    .line 92
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method
