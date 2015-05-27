.class public Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private axS:C

.field private axT:Ljava/lang/StringBuffer;

.field private index:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->axT:Ljava/lang/StringBuffer;

    .line 26
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->index:I

    .line 28
    iput-char p2, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->axS:C

    .line 29
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    .line 33
    iget v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 6

    .line 38
    iget v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    iget v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->index:I

    add-int/lit8 v2, v0, 0x1

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 47
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->axT:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 49
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_8

    .line 51
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 53
    const/16 v0, 0x22

    if-ne v5, v0, :cond_3

    .line 55
    if-nez v4, :cond_2

    .line 57
    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 59
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->axT:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    const/4 v4, 0x0

    goto :goto_2

    .line 64
    :cond_3
    if-nez v4, :cond_4

    if-eqz v3, :cond_5

    .line 66
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->axT:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    const/4 v4, 0x0

    goto :goto_2

    .line 69
    :cond_5
    const/16 v0, 0x5c

    if-ne v5, v0, :cond_6

    .line 71
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->axT:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    const/4 v4, 0x1

    goto :goto_2

    .line 74
    :cond_6
    iget-char v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->axS:C

    if-ne v5, v0, :cond_7

    .line 76
    goto :goto_3

    .line 80
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->axT:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_0

    .line 86
    :cond_8
    :goto_3
    iput v2, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->index:I

    .line 88
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->axT:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
