.class public Lorg/spongycastle/asn1/OIDTokenizer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aby:Ljava/lang/String;

.field private index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/spongycastle/asn1/OIDTokenizer;->aby:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    .line 19
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    .line 23
    iget v0, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 5

    .line 28
    iget v0, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/OIDTokenizer;->aby:Ljava/lang/String;

    iget v1, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 36
    const/4 v0, -0x1

    if-ne v4, v0, :cond_1

    .line 38
    iget-object v0, p0, Lorg/spongycastle/asn1/OIDTokenizer;->aby:Ljava/lang/String;

    iget v1, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    .line 40
    return-object v3

    .line 43
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/OIDTokenizer;->aby:Ljava/lang/String;

    iget v1, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 45
    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lorg/spongycastle/asn1/OIDTokenizer;->index:I

    .line 46
    return-object v3
.end method
