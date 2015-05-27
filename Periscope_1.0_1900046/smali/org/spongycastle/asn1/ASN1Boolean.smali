.class public Lorg/spongycastle/asn1/ASN1Boolean;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""


# static fields
.field private static final aae:[B

.field private static final aaf:[B

.field public static final aah:Lorg/spongycastle/asn1/ASN1Boolean;

.field public static final aai:Lorg/spongycastle/asn1/ASN1Boolean;


# instance fields
.field private aag:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->aae:[B

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->aaf:[B

    .line 28
    new-instance v0, Lorg/spongycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->aah:Lorg/spongycastle/asn1/ASN1Boolean;

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/ASN1Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->aai:Lorg/spongycastle/asn1/ASN1Boolean;

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 136
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 137
    if-eqz p1, :cond_0

    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->aae:[B

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->aaf:[B

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->aag:[B

    .line 138
    return-void
.end method

.method constructor <init>([B)V
    .locals 2

    .line 110
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 111
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->aaf:[B

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->aag:[B

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 122
    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->aae:[B

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->aag:[B

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->aag:[B

    .line 128
    :goto_0
    return-void
.end method

.method public static ˊ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;
    .locals 2

    .line 96
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 98
    if-nez p1, :cond_0

    instance-of v0, v1, Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Boolean;->ᵙ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v0

    return-object v0

    .line 104
    :cond_1
    move-object v0, v1

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->ﹳ([B)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static ᕑ(Z)Lorg/spongycastle/asn1/ASN1Boolean;
    .locals 1

    .line 69
    if-eqz p0, :cond_0

    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->aai:Lorg/spongycastle/asn1/ASN1Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->aah:Lorg/spongycastle/asn1/ASN1Boolean;

    :goto_0
    return-object v0
.end method

.method public static ᵙ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Boolean;
    .locals 5

    .line 41
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Boolean;

    return-object v0

    .line 46
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 48
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    move-object v3, v0

    .line 51
    :try_start_0
    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Boolean;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 53
    :catch_0
    move-exception v4

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct boolean from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static ﹳ([B)Lorg/spongycastle/asn1/ASN1Boolean;
    .locals 2

    .line 186
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BOOLEAN value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    .line 193
    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->aah:Lorg/spongycastle/asn1/ASN1Boolean;

    return-object v0

    .line 195
    :cond_1
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 197
    sget-object v0, Lorg/spongycastle/asn1/ASN1Boolean;->aai:Lorg/spongycastle/asn1/ASN1Boolean;

    return-object v0

    .line 201
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public ew()Z
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->aag:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method ex()Z
    .locals 1

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 1

    .line 152
    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 175
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->aag:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->aag:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->aag:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 160
    return-void
.end method

.method protected ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 165
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->aag:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Boolean;

    iget-object v1, v1, Lorg/spongycastle/asn1/ASN1Boolean;->aag:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 170
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
