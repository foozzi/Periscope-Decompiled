.class public abstract Lorg/spongycastle/crypto/tls/TlsProtocol;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    }
.end annotation


# static fields
.field protected static final aVB:Ljava/lang/Integer;

.field protected static final aVC:Ljava/lang/Integer;


# instance fields
.field protected aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

.field protected aTf:Lorg/spongycastle/crypto/tls/TlsSession;

.field protected aTg:Lorg/spongycastle/crypto/tls/SessionParameters;

.field protected aTi:[I

.field protected aTj:[S

.field protected aTk:Ljava/util/Hashtable;

.field protected aTm:Z

.field protected aTo:Z

.field protected aTp:Z

.field protected aTz:Ljava/util/Hashtable;

.field protected aUF:Lorg/spongycastle/crypto/tls/Certificate;

.field private aVD:Lorg/spongycastle/crypto/tls/ByteQueue;

.field private aVE:Lorg/spongycastle/crypto/tls/ByteQueue;

.field private aVF:Lorg/spongycastle/crypto/tls/ByteQueue;

.field protected aVG:Lorg/spongycastle/crypto/tls/RecordStream;

.field private volatile aVH:Z

.field private volatile aVI:Z

.field private volatile aVJ:Z

.field private aVK:[B

.field protected aVL:S

.field protected aVM:Z

.field protected aVN:Z

.field private volatile closed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const v0, 0xff01

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVB:Ljava/lang/Integer;

    .line 25
    const/16 v0, 0x23

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVC:Ljava/lang/Integer;

    return-void
.end method

.method private mY()V
    .locals 10

    .line 255
    :cond_0
    const/4 v4, 0x0

    .line 259
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVF:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 261
    const/4 v0, 0x4

    new-array v5, v0, [B

    .line 262
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVF:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v5, v1, v2, v3}, Lorg/spongycastle/crypto/tls/ByteQueue;->ˎ([BIII)V

    .line 263
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 264
    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﾞ(Ljava/io/InputStream;)S

    move-result v7

    .line 265
    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->ՙ(Ljava/io/InputStream;)I

    move-result v8

    .line 270
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVF:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    add-int/lit8 v1, v8, 0x4

    if-lt v0, v1, :cond_3

    .line 275
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVF:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x4

    invoke-virtual {v0, v8, v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->ᔉ(II)[B

    move-result-object v9

    .line 282
    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 285
    :sswitch_0
    goto :goto_2

    .line 288
    :sswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVK:[B

    if-nez v0, :cond_2

    .line 290
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->mM()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ﹻ(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVK:[B

    .line 296
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v5, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->ʳ([BII)V

    .line 297
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1, v8}, Lorg/spongycastle/crypto/tls/RecordStream;->ʳ([BII)V

    .line 304
    :goto_2
    invoke-virtual {p0, v7, v9}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˊ(S[B)V

    .line 305
    const/4 v4, 0x1

    .line 309
    :cond_3
    if-nez v4, :cond_0

    .line 310
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method private mZ()V
    .locals 0

    .line 319
    return-void
.end method

.method private na()V
    .locals 6

    .line 324
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVE:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 329
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVE:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/ByteQueue;->ᔉ(II)[B

    move-result-object v3

    .line 330
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    int-to-short v4, v0

    .line 331
    const/4 v0, 0x1

    aget-byte v0, v3, v0

    int-to-short v5, v0

    .line 333
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->mO()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Lorg/spongycastle/crypto/tls/TlsPeer;->ˊ(SS)V

    .line 335
    const/4 v0, 0x2

    if-ne v4, v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->nd()V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVH:Z

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    .line 346
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->mz()V

    .line 348
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    if-nez v5, :cond_1

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ﹼ(Z)V

    .line 366
    :cond_1
    invoke-virtual {p0, v5}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ʼ(S)V

    .line 368
    goto :goto_0

    .line 369
    :cond_2
    return-void
.end method

.method private ʴ([BII)V
    .locals 4

    .line 380
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_3

    .line 382
    add-int v0, p2, v2

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʴ([BI)S

    move-result v3

    .line 384
    const/4 v0, 0x1

    if-eq v3, v0, :cond_0

    .line 386
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 389
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVN:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVE:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVF:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 393
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 396
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->mu()V

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVN:Z

    .line 400
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->mX()V

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    :cond_3
    return-void
.end method

.method protected static ʻ(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;
    .locals 6

    .line 937
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᵎ(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 939
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 941
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 943
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 945
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 947
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʹ(Ljava/io/InputStream;)I

    move-result v4

    .line 948
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴵ(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 950
    new-instance v0, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;

    invoke-direct {v0, v4, v5}, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;-><init>(I[B)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 951
    goto :goto_0

    .line 953
    :cond_0
    return-object v3
.end method

.method protected static ˊ(Ljava/io/OutputStream;Ljava/util/Hashtable;)V
    .locals 6

    .line 959
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 961
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 962
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 965
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 966
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v5, v0

    .line 968
    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴻ(I)V

    .line 969
    invoke-static {v4, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʻ(ILjava/io/OutputStream;)V

    .line 970
    invoke-static {v5, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ([BLjava/io/OutputStream;)V

    .line 971
    goto :goto_0

    .line 973
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 975
    invoke-static {v3, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ([BLjava/io/OutputStream;)V

    .line 976
    return-void
.end method

.method protected static ˊ(Ljava/io/OutputStream;Ljava/util/Vector;)V
    .locals 5

    .line 981
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 983
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 985
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;

    move-object v3, v0

    .line 987
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->getDataType()I

    move-result v4

    .line 988
    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴻ(I)V

    .line 989
    invoke-static {v4, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʻ(ILjava/io/OutputStream;)V

    .line 990
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->getData()[B

    move-result-object v0

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ([BLjava/io/OutputStream;)V

    .line 983
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 993
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 995
    invoke-static {v2, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˏ([BLjava/io/OutputStream;)V

    .line 996
    return-void
.end method

.method protected static ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V
    .locals 4

    .line 863
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->mR()[B

    move-result-object v2

    .line 867
    :try_start_0
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-static {p0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;[B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUy:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    if-eqz v2, :cond_1

    .line 878
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    goto :goto_0

    .line 876
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    .line 878
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    :cond_0
    throw v3

    .line 881
    :cond_1
    :goto_0
    return-void
.end method

.method protected static ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B
    .locals 4

    .line 888
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->lW()Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    .line 890
    if-eqz p2, :cond_0

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {v2, p2, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 895
    :cond_0
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 896
    const/4 v0, 0x0

    invoke-interface {v2, v3, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 897
    return-object v3
.end method

.method protected static ˏ(Lorg/spongycastle/crypto/tls/TlsContext;I)I
    .locals 3

    .line 1000
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v2

    .line 1002
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1080
    :sswitch_0
    if-eqz v2, :cond_0

    .line 1082
    const/4 v0, 0x1

    return v0

    .line 1084
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 1121
    :sswitch_1
    if-eqz v2, :cond_1

    .line 1123
    const/4 v0, 0x2

    return v0

    .line 1125
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 1141
    :sswitch_2
    if-eqz v2, :cond_2

    .line 1143
    const/4 v0, 0x2

    return v0

    .line 1145
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1150
    :goto_0
    if-eqz v2, :cond_3

    .line 1152
    const/4 v0, 0x1

    return v0

    .line 1154
    :cond_3
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x9c -> :sswitch_0
        0x9d -> :sswitch_1
        0x9e -> :sswitch_0
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_1
        0xa2 -> :sswitch_0
        0xa3 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_1
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_1
        0xaa -> :sswitch_0
        0xab -> :sswitch_1
        0xac -> :sswitch_0
        0xad -> :sswitch_1
        0xaf -> :sswitch_2
        0xb1 -> :sswitch_2
        0xb3 -> :sswitch_2
        0xb5 -> :sswitch_2
        0xb7 -> :sswitch_2
        0xb9 -> :sswitch_2
        0xba -> :sswitch_0
        0xbb -> :sswitch_0
        0xbc -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
        0xbf -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc023 -> :sswitch_0
        0xc024 -> :sswitch_1
        0xc025 -> :sswitch_0
        0xc026 -> :sswitch_1
        0xc027 -> :sswitch_0
        0xc028 -> :sswitch_1
        0xc029 -> :sswitch_0
        0xc02a -> :sswitch_1
        0xc02b -> :sswitch_0
        0xc02c -> :sswitch_1
        0xc02d -> :sswitch_0
        0xc02e -> :sswitch_1
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_1
        0xc031 -> :sswitch_0
        0xc032 -> :sswitch_1
        0xc038 -> :sswitch_2
        0xc03b -> :sswitch_2
        0xc072 -> :sswitch_0
        0xc073 -> :sswitch_1
        0xc074 -> :sswitch_0
        0xc075 -> :sswitch_1
        0xc076 -> :sswitch_0
        0xc077 -> :sswitch_1
        0xc078 -> :sswitch_0
        0xc079 -> :sswitch_1
        0xc07a -> :sswitch_0
        0xc07b -> :sswitch_1
        0xc07c -> :sswitch_0
        0xc07d -> :sswitch_1
        0xc07e -> :sswitch_0
        0xc07f -> :sswitch_1
        0xc080 -> :sswitch_0
        0xc081 -> :sswitch_1
        0xc082 -> :sswitch_0
        0xc083 -> :sswitch_1
        0xc084 -> :sswitch_0
        0xc085 -> :sswitch_1
        0xc086 -> :sswitch_0
        0xc087 -> :sswitch_1
        0xc088 -> :sswitch_0
        0xc089 -> :sswitch_1
        0xc08a -> :sswitch_0
        0xc08b -> :sswitch_1
        0xc08c -> :sswitch_0
        0xc08d -> :sswitch_1
        0xc08e -> :sswitch_0
        0xc08f -> :sswitch_1
        0xc090 -> :sswitch_0
        0xc091 -> :sswitch_1
        0xc092 -> :sswitch_0
        0xc093 -> :sswitch_1
        0xc095 -> :sswitch_2
        0xc097 -> :sswitch_2
        0xc099 -> :sswitch_2
        0xc09b -> :sswitch_2
        0xc09c -> :sswitch_0
        0xc09d -> :sswitch_0
        0xc09e -> :sswitch_0
        0xc09f -> :sswitch_0
        0xc0a0 -> :sswitch_0
        0xc0a1 -> :sswitch_0
        0xc0a2 -> :sswitch_0
        0xc0a3 -> :sswitch_0
        0xc0a4 -> :sswitch_0
        0xc0a5 -> :sswitch_0
        0xc0a6 -> :sswitch_0
        0xc0a7 -> :sswitch_0
        0xc0a8 -> :sswitch_0
        0xc0a9 -> :sswitch_0
        0xc0aa -> :sswitch_0
        0xc0ab -> :sswitch_0
        0xcc13 -> :sswitch_0
        0xcc14 -> :sswitch_0
        0xcc15 -> :sswitch_0
    .end sparse-switch
.end method

.method protected static ˏ(Ljava/io/ByteArrayInputStream;)V
    .locals 2

    .line 835
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 837
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 839
    :cond_0
    return-void
.end method

.method protected static ˢ([B)[B
    .locals 1

    .line 857
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ι([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected static ᐝ(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;
    .locals 7

    .line 903
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 905
    const/4 v0, 0x0

    return-object v0

    .line 908
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴵ(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 910
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 912
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 915
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 917
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    .line 919
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʹ(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 920
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴵ(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 925
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_1

    .line 927
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 929
    :cond_1
    goto :goto_0

    .line 931
    :cond_2
    return-object v4
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 790
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ﹼ(Z)V

    .line 791
    return-void
.end method

.method protected flush()V
    .locals 1

    .line 809
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->flush()V

    .line 810
    return-void
.end method

.method protected abstract mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;
.end method

.method protected abstract mO()Lorg/spongycastle/crypto/tls/TlsPeer;
.end method

.method protected mX()V
    .locals 0

    .line 102
    return-void
.end method

.method protected nb()I
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVD:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    return v0
.end method

.method protected nc()V
    .locals 4

    .line 462
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->mv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 492
    :cond_0
    goto :goto_0

    .line 469
    :catch_0
    move-exception v3

    .line 471
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_1

    .line 473
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->mT()S

    move-result v0

    const-string v1, "Failed to read record"

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˋ(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 475
    :cond_1
    throw v3

    .line 477
    :catch_1
    move-exception v3

    .line 479
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_2

    .line 481
    const-string v0, "Failed to read record"

    const/4 v1, 0x2

    const/16 v2, 0x50

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˋ(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 483
    :cond_2
    throw v3

    .line 485
    :catch_2
    move-exception v3

    .line 487
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_3

    .line 489
    const-string v0, "Failed to read record"

    const/4 v1, 0x2

    const/16 v2, 0x50

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˋ(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 491
    :cond_3
    throw v3

    .line 493
    :goto_0
    return-void
.end method

.method protected nd()V
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aTg:Lorg/spongycastle/crypto/tls/SessionParameters;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aTg:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SessionParameters;->clear()V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aTg:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 664
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aTf:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aTf:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsSession;->invalidate()V

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aTf:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 669
    :cond_1
    return-void
.end method

.method protected ne()V
    .locals 4

    .line 741
    const/4 v0, 0x1

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    .line 742
    array-length v0, v3

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˎ(S[BII)V

    .line 743
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->mt()V

    .line 744
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
    .end array-data
.end method

.method protected nf()V
    .locals 4

    .line 749
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->mM()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ﹻ(Z)[B

    move-result-object v2

    .line 751
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    array-length v0, v2

    const/16 v1, 0x14

    invoke-direct {v3, p0, v1, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;SI)V

    .line 753
    invoke-virtual {v3, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    .line 755
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->ng()V

    .line 756
    return-void
.end method

.method protected ʼ(S)V
    .locals 0

    .line 110
    return-void
.end method

.method protected ˆ([BII)I
    .locals 2

    .line 423
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 425
    const/4 v0, 0x0

    return v0

    .line 428
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVD:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 433
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v0, :cond_2

    .line 435
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVH:Z

    if-eqz v0, :cond_1

    .line 440
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 449
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->nc()V

    goto :goto_0

    .line 452
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVD:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 453
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVD:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->ˏ([BIII)V

    .line 454
    return p3
.end method

.method protected ˇ([BII)V
    .locals 3

    .line 541
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v0, :cond_1

    .line 543
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVH:Z

    if-eqz v0, :cond_0

    .line 545
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Sorry, connection has been closed, you cannot write more data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_1
    :goto_0
    if-lez p3, :cond_3

    .line 560
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVJ:Z

    if-eqz v0, :cond_2

    .line 567
    const/16 v0, 0x17

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˎ(S[BII)V

    .line 568
    add-int/lit8 p2, p2, 0x1

    .line 569
    add-int/lit8 p3, p3, -0x1

    .line 572
    :cond_2
    if-lez p3, :cond_1

    .line 575
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->mr()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 576
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1, p2, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˎ(S[BII)V

    .line 577
    add-int/2addr p2, v2

    .line 578
    sub-int/2addr p3, v2

    .line 579
    goto :goto_0

    .line 581
    :cond_3
    return-void
.end method

.method protected ˊ(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 2

    .line 815
    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ˌ(Ljava/util/Hashtable;)S

    move-result v1

    .line 816
    if-ltz v1, :cond_0

    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVM:Z

    if-nez v0, :cond_0

    .line 818
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ˌ(Ljava/util/Hashtable;)S

    move-result v0

    if-eq v1, v0, :cond_0

    .line 820
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 823
    :cond_0
    return v1
.end method

.method protected ˊ(SLjava/lang/String;)V
    .locals 2

    .line 705
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˎ(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 706
    return-void
.end method

.method protected abstract ˊ(S[B)V
.end method

.method protected ˋ(SSLjava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 627
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_1

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    .line 634
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 641
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->nd()V

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVH:Z

    .line 645
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˎ(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 646
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->mz()V

    .line 647
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 649
    return-void

    .line 653
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected ˋ(S[BII)V
    .locals 2

    .line 201
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 205
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVE:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->ｰ([BII)V

    .line 206
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->na()V

    .line 207
    goto :goto_0

    .line 211
    :pswitch_1
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVI:Z

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVD:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->ｰ([BII)V

    .line 216
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->mZ()V

    .line 217
    goto :goto_0

    .line 221
    :pswitch_2
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ʴ([BII)V

    .line 222
    goto :goto_0

    .line 226
    :pswitch_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVF:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->ｰ([BII)V

    .line 227
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->mY()V

    .line 228
    goto :goto_0

    .line 232
    :pswitch_4
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVI:Z

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 247
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected ˎ(Ljava/io/ByteArrayInputStream;)V
    .locals 3

    .line 674
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVK:[B

    array-length v0, v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(ILjava/io/InputStream;)[B

    move-result-object v2

    .line 676
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 681
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVK:[B

    invoke-static {v0, v2}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 688
    :cond_0
    return-void
.end method

.method protected ˎ(SSLjava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .line 693
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->mO()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsPeer;->ˊ(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 695
    const/4 v0, 0x2

    new-array v3, v0, [B

    .line 696
    int-to-byte v0, p1

    const/4 v1, 0x0

    aput-byte v0, v3, v1

    .line 697
    int-to-byte v0, p2

    const/4 v1, 0x1

    aput-byte v0, v3, v1

    .line 699
    const/16 v0, 0x15

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v3, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˎ(S[BII)V

    .line 700
    return-void
.end method

.method protected ˎ(S[BII)V
    .locals 4

    .line 500
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/RecordStream;->ˊ(S[BII)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 525
    goto :goto_0

    .line 502
    :catch_0
    move-exception v3

    .line 504
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_0

    .line 506
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->mT()S

    move-result v0

    const-string v1, "Failed to write record"

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˋ(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 508
    :cond_0
    throw v3

    .line 510
    :catch_1
    move-exception v3

    .line 512
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_1

    .line 514
    const-string v0, "Failed to write record"

    const/4 v1, 0x2

    const/16 v2, 0x50

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˋ(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 516
    :cond_1
    throw v3

    .line 518
    :catch_2
    move-exception v3

    .line 520
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_2

    .line 522
    const-string v0, "Failed to write record"

    const/4 v1, 0x2

    const/16 v2, 0x50

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˋ(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 524
    :cond_2
    throw v3

    .line 526
    :goto_0
    return-void
.end method

.method protected ˏ(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 5

    .line 711
    if-nez p1, :cond_0

    .line 713
    sget-object p1, Lorg/spongycastle/crypto/tls/Certificate;->aSU:Lorg/spongycastle/crypto/tls/Certificate;

    .line 716
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->getLength()I

    move-result v0

    if-nez v0, :cond_1

    .line 718
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    .line 719
    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsContext;->mM()Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->lJ()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    .line 722
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " client didn\'t provide credentials"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 725
    const/16 v0, 0x29

    invoke-virtual {p0, v0, v4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˊ(SLjava/lang/String;)V

    .line 726
    return-void

    .line 731
    :cond_1
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v0, 0xb

    invoke-direct {v2, p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 733
    invoke-virtual {p1, v2}, Lorg/spongycastle/crypto/tls/Certificate;->encode(Ljava/io/OutputStream;)V

    .line 735
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->ng()V

    .line 736
    return-void
.end method

.method protected ˡ([BII)V
    .locals 2

    .line 585
    :goto_0
    if-lez p3, :cond_0

    .line 588
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->mr()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 589
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˎ(S[BII)V

    .line 590
    add-int/2addr p2, v1

    .line 591
    sub-int/2addr p3, v1

    .line 592
    goto :goto_0

    .line 593
    :cond_0
    return-void
.end method

.method protected ᐝ(Ljava/util/Vector;)V
    .locals 2

    .line 761
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v0, 0x17

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 763
    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˊ(Ljava/io/OutputStream;Ljava/util/Vector;)V

    .line 765
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->ng()V

    .line 766
    return-void
.end method

.method protected ﹻ(Z)[B
    .locals 5

    .line 770
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v4

    .line 772
    if-eqz p1, :cond_0

    .line 774
    const-string v0, "server finished"

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/RecordStream;->mx()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/crypto/tls/TlsUtils;->aWc:[B

    invoke-static {v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v1

    invoke-static {v4, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 778
    :cond_0
    const-string v0, "client finished"

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/RecordStream;->mx()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/crypto/tls/TlsUtils;->aWb:[B

    invoke-static {v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v1

    invoke-static {v4, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected ﹼ(Z)V
    .locals 4

    .line 796
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_1

    .line 798
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVI:Z

    if-nez v0, :cond_0

    .line 800
    const-string v0, "User canceled handshake"

    const/16 v1, 0x5a

    invoke-virtual {p0, v1, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˊ(SLjava/lang/String;)V

    .line 802
    :cond_0
    const-string v0, "Connection closed"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˋ(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 804
    :cond_1
    return-void
.end method
