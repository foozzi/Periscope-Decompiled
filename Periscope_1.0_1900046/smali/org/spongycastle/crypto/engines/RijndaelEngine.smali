.class public Lorg/spongycastle/crypto/engines/RijndaelEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final aGd:[B

.field private static final aID:[B

.field private static final aIE:[I

.field private static final aLn:[B

.field private static final aLo:[B

.field static aLp:[[B

.field static aLq:[[B


# instance fields
.field private BC:I

.field private aEW:Z

.field private aIH:I

.field private aLr:J

.field private aLs:I

.field private aLt:[[J

.field private aLu:J

.field private aLv:J

.field private aLw:J

.field private aLx:J

.field private aLy:[B

.field private aLz:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLn:[B

    .line 57
    const/16 v0, 0x1ff

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLo:[B

    .line 92
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aGd:[B

    .line 111
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aID:[B

    .line 130
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aIE:[I

    .line 133
    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLp:[[B

    .line 142
    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_a

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_b

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_c

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_d

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_e

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLq:[[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x19t
        0x1t
        0x32t
        0x2t
        0x1at
        -0x3at
        0x4bt
        -0x39t
        0x1bt
        0x68t
        0x33t
        -0x12t
        -0x21t
        0x3t
        0x64t
        0x4t
        -0x20t
        0xet
        0x34t
        -0x73t
        -0x7ft
        -0x11t
        0x4ct
        0x71t
        0x8t
        -0x38t
        -0x8t
        0x69t
        0x1ct
        -0x3ft
        0x7dt
        -0x3et
        0x1dt
        -0x4bt
        -0x7t
        -0x47t
        0x27t
        0x6at
        0x4dt
        -0x1ct
        -0x5at
        0x72t
        -0x66t
        -0x37t
        0x9t
        0x78t
        0x65t
        0x2ft
        -0x76t
        0x5t
        0x21t
        0xft
        -0x1ft
        0x24t
        0x12t
        -0x10t
        -0x7et
        0x45t
        0x35t
        -0x6dt
        -0x26t
        -0x72t
        -0x6at
        -0x71t
        -0x25t
        -0x43t
        0x36t
        -0x30t
        -0x32t
        -0x6ct
        0x13t
        0x5ct
        -0x2et
        -0xft
        0x40t
        0x46t
        -0x7dt
        0x38t
        0x66t
        -0x23t
        -0x3t
        0x30t
        -0x41t
        0x6t
        -0x75t
        0x62t
        -0x4dt
        0x25t
        -0x1et
        -0x68t
        0x22t
        -0x78t
        -0x6ft
        0x10t
        0x7et
        0x6et
        0x48t
        -0x3dt
        -0x5dt
        -0x4at
        0x1et
        0x42t
        0x3at
        0x6bt
        0x28t
        0x54t
        -0x6t
        -0x7bt
        0x3dt
        -0x46t
        0x2bt
        0x79t
        0xat
        0x15t
        -0x65t
        -0x61t
        0x5et
        -0x36t
        0x4et
        -0x2ct
        -0x54t
        -0x1bt
        -0xdt
        0x73t
        -0x59t
        0x57t
        -0x51t
        0x58t
        -0x58t
        0x50t
        -0xct
        -0x16t
        -0x2at
        0x74t
        0x4ft
        -0x52t
        -0x17t
        -0x2bt
        -0x19t
        -0x1at
        -0x53t
        -0x18t
        0x2ct
        -0x29t
        0x75t
        0x7at
        -0x15t
        0x16t
        0xbt
        -0xbt
        0x59t
        -0x35t
        0x5ft
        -0x50t
        -0x64t
        -0x57t
        0x51t
        -0x60t
        0x7ft
        0xct
        -0xat
        0x6ft
        0x17t
        -0x3ct
        0x49t
        -0x14t
        -0x28t
        0x43t
        0x1ft
        0x2dt
        -0x5ct
        0x76t
        0x7bt
        -0x49t
        -0x34t
        -0x45t
        0x3et
        0x5at
        -0x5t
        0x60t
        -0x4ft
        -0x7at
        0x3bt
        0x52t
        -0x5ft
        0x6ct
        -0x56t
        0x55t
        0x29t
        -0x63t
        -0x69t
        -0x4et
        -0x79t
        -0x70t
        0x61t
        -0x42t
        -0x24t
        -0x4t
        -0x44t
        -0x6bt
        -0x31t
        -0x33t
        0x37t
        0x3ft
        0x5bt
        -0x2ft
        0x53t
        0x39t
        -0x7ct
        0x3ct
        0x41t
        -0x5et
        0x6dt
        0x47t
        0x14t
        0x2at
        -0x62t
        0x5dt
        0x56t
        -0xet
        -0x2dt
        -0x55t
        0x44t
        0x11t
        -0x6et
        -0x27t
        0x23t
        0x20t
        0x2et
        -0x77t
        -0x4ct
        0x7ct
        -0x48t
        0x26t
        0x77t
        -0x67t
        -0x1dt
        -0x5bt
        0x67t
        0x4at
        -0x13t
        -0x22t
        -0x3bt
        0x31t
        -0x2t
        0x18t
        0xdt
        0x63t
        -0x74t
        -0x80t
        -0x40t
        -0x9t
        0x70t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x3t
        0x5t
        0xft
        0x11t
        0x33t
        0x55t
        -0x1t
        0x1at
        0x2et
        0x72t
        -0x6at
        -0x5ft
        -0x8t
        0x13t
        0x35t
        0x5ft
        -0x1ft
        0x38t
        0x48t
        -0x28t
        0x73t
        -0x6bt
        -0x5ct
        -0x9t
        0x2t
        0x6t
        0xat
        0x1et
        0x22t
        0x66t
        -0x56t
        -0x1bt
        0x34t
        0x5ct
        -0x1ct
        0x37t
        0x59t
        -0x15t
        0x26t
        0x6at
        -0x42t
        -0x27t
        0x70t
        -0x70t
        -0x55t
        -0x1at
        0x31t
        0x53t
        -0xbt
        0x4t
        0xct
        0x14t
        0x3ct
        0x44t
        -0x34t
        0x4ft
        -0x2ft
        0x68t
        -0x48t
        -0x2dt
        0x6et
        -0x4et
        -0x33t
        0x4ct
        -0x2ct
        0x67t
        -0x57t
        -0x20t
        0x3bt
        0x4dt
        -0x29t
        0x62t
        -0x5at
        -0xft
        0x8t
        0x18t
        0x28t
        0x78t
        -0x78t
        -0x7dt
        -0x62t
        -0x47t
        -0x30t
        0x6bt
        -0x43t
        -0x24t
        0x7ft
        -0x7ft
        -0x68t
        -0x4dt
        -0x32t
        0x49t
        -0x25t
        0x76t
        -0x66t
        -0x4bt
        -0x3ct
        0x57t
        -0x7t
        0x10t
        0x30t
        0x50t
        -0x10t
        0xbt
        0x1dt
        0x27t
        0x69t
        -0x45t
        -0x2at
        0x61t
        -0x5dt
        -0x2t
        0x19t
        0x2bt
        0x7dt
        -0x79t
        -0x6et
        -0x53t
        -0x14t
        0x2ft
        0x71t
        -0x6dt
        -0x52t
        -0x17t
        0x20t
        0x60t
        -0x60t
        -0x5t
        0x16t
        0x3at
        0x4et
        -0x2et
        0x6dt
        -0x49t
        -0x3et
        0x5dt
        -0x19t
        0x32t
        0x56t
        -0x6t
        0x15t
        0x3ft
        0x41t
        -0x3dt
        0x5et
        -0x1et
        0x3dt
        0x47t
        -0x37t
        0x40t
        -0x40t
        0x5bt
        -0x13t
        0x2ct
        0x74t
        -0x64t
        -0x41t
        -0x26t
        0x75t
        -0x61t
        -0x46t
        -0x2bt
        0x64t
        -0x54t
        -0x11t
        0x2at
        0x7et
        -0x7et
        -0x63t
        -0x44t
        -0x21t
        0x7at
        -0x72t
        -0x77t
        -0x80t
        -0x65t
        -0x4at
        -0x3ft
        0x58t
        -0x18t
        0x23t
        0x65t
        -0x51t
        -0x16t
        0x25t
        0x6ft
        -0x4ft
        -0x38t
        0x43t
        -0x3bt
        0x54t
        -0x4t
        0x1ft
        0x21t
        0x63t
        -0x5bt
        -0xct
        0x7t
        0x9t
        0x1bt
        0x2dt
        0x77t
        -0x67t
        -0x50t
        -0x35t
        0x46t
        -0x36t
        0x45t
        -0x31t
        0x4at
        -0x22t
        0x79t
        -0x75t
        -0x7at
        -0x6ft
        -0x58t
        -0x1dt
        0x3et
        0x42t
        -0x3at
        0x51t
        -0xdt
        0xet
        0x12t
        0x36t
        0x5at
        -0x12t
        0x29t
        0x7bt
        -0x73t
        -0x74t
        -0x71t
        -0x76t
        -0x7bt
        -0x6ct
        -0x59t
        -0xet
        0xdt
        0x17t
        0x39t
        0x4bt
        -0x23t
        0x7ct
        -0x7ct
        -0x69t
        -0x5et
        -0x3t
        0x1ct
        0x24t
        0x6ct
        -0x4ct
        -0x39t
        0x52t
        -0xat
        0x1t
        0x3t
        0x5t
        0xft
        0x11t
        0x33t
        0x55t
        -0x1t
        0x1at
        0x2et
        0x72t
        -0x6at
        -0x5ft
        -0x8t
        0x13t
        0x35t
        0x5ft
        -0x1ft
        0x38t
        0x48t
        -0x28t
        0x73t
        -0x6bt
        -0x5ct
        -0x9t
        0x2t
        0x6t
        0xat
        0x1et
        0x22t
        0x66t
        -0x56t
        -0x1bt
        0x34t
        0x5ct
        -0x1ct
        0x37t
        0x59t
        -0x15t
        0x26t
        0x6at
        -0x42t
        -0x27t
        0x70t
        -0x70t
        -0x55t
        -0x1at
        0x31t
        0x53t
        -0xbt
        0x4t
        0xct
        0x14t
        0x3ct
        0x44t
        -0x34t
        0x4ft
        -0x2ft
        0x68t
        -0x48t
        -0x2dt
        0x6et
        -0x4et
        -0x33t
        0x4ct
        -0x2ct
        0x67t
        -0x57t
        -0x20t
        0x3bt
        0x4dt
        -0x29t
        0x62t
        -0x5at
        -0xft
        0x8t
        0x18t
        0x28t
        0x78t
        -0x78t
        -0x7dt
        -0x62t
        -0x47t
        -0x30t
        0x6bt
        -0x43t
        -0x24t
        0x7ft
        -0x7ft
        -0x68t
        -0x4dt
        -0x32t
        0x49t
        -0x25t
        0x76t
        -0x66t
        -0x4bt
        -0x3ct
        0x57t
        -0x7t
        0x10t
        0x30t
        0x50t
        -0x10t
        0xbt
        0x1dt
        0x27t
        0x69t
        -0x45t
        -0x2at
        0x61t
        -0x5dt
        -0x2t
        0x19t
        0x2bt
        0x7dt
        -0x79t
        -0x6et
        -0x53t
        -0x14t
        0x2ft
        0x71t
        -0x6dt
        -0x52t
        -0x17t
        0x20t
        0x60t
        -0x60t
        -0x5t
        0x16t
        0x3at
        0x4et
        -0x2et
        0x6dt
        -0x49t
        -0x3et
        0x5dt
        -0x19t
        0x32t
        0x56t
        -0x6t
        0x15t
        0x3ft
        0x41t
        -0x3dt
        0x5et
        -0x1et
        0x3dt
        0x47t
        -0x37t
        0x40t
        -0x40t
        0x5bt
        -0x13t
        0x2ct
        0x74t
        -0x64t
        -0x41t
        -0x26t
        0x75t
        -0x61t
        -0x46t
        -0x2bt
        0x64t
        -0x54t
        -0x11t
        0x2at
        0x7et
        -0x7et
        -0x63t
        -0x44t
        -0x21t
        0x7at
        -0x72t
        -0x77t
        -0x80t
        -0x65t
        -0x4at
        -0x3ft
        0x58t
        -0x18t
        0x23t
        0x65t
        -0x51t
        -0x16t
        0x25t
        0x6ft
        -0x4ft
        -0x38t
        0x43t
        -0x3bt
        0x54t
        -0x4t
        0x1ft
        0x21t
        0x63t
        -0x5bt
        -0xct
        0x7t
        0x9t
        0x1bt
        0x2dt
        0x77t
        -0x67t
        -0x50t
        -0x35t
        0x46t
        -0x36t
        0x45t
        -0x31t
        0x4at
        -0x22t
        0x79t
        -0x75t
        -0x7at
        -0x6ft
        -0x58t
        -0x1dt
        0x3et
        0x42t
        -0x3at
        0x51t
        -0xdt
        0xet
        0x12t
        0x36t
        0x5at
        -0x12t
        0x29t
        0x7bt
        -0x73t
        -0x74t
        -0x71t
        -0x76t
        -0x7bt
        -0x6ct
        -0x59t
        -0xet
        0xdt
        0x17t
        0x39t
        0x4bt
        -0x23t
        0x7ct
        -0x7ct
        -0x69t
        -0x5et
        -0x3t
        0x1ct
        0x24t
        0x6ct
        -0x4ct
        -0x39t
        0x52t
        -0xat
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    :array_3
    .array-data 1
        0x52t
        0x9t
        0x6at
        -0x2bt
        0x30t
        0x36t
        -0x5bt
        0x38t
        -0x41t
        0x40t
        -0x5dt
        -0x62t
        -0x7ft
        -0xdt
        -0x29t
        -0x5t
        0x7ct
        -0x1dt
        0x39t
        -0x7et
        -0x65t
        0x2ft
        -0x1t
        -0x79t
        0x34t
        -0x72t
        0x43t
        0x44t
        -0x3ct
        -0x22t
        -0x17t
        -0x35t
        0x54t
        0x7bt
        -0x6ct
        0x32t
        -0x5at
        -0x3et
        0x23t
        0x3dt
        -0x12t
        0x4ct
        -0x6bt
        0xbt
        0x42t
        -0x6t
        -0x3dt
        0x4et
        0x8t
        0x2et
        -0x5ft
        0x66t
        0x28t
        -0x27t
        0x24t
        -0x4et
        0x76t
        0x5bt
        -0x5et
        0x49t
        0x6dt
        -0x75t
        -0x2ft
        0x25t
        0x72t
        -0x8t
        -0xat
        0x64t
        -0x7at
        0x68t
        -0x68t
        0x16t
        -0x2ct
        -0x5ct
        0x5ct
        -0x34t
        0x5dt
        0x65t
        -0x4at
        -0x6et
        0x6ct
        0x70t
        0x48t
        0x50t
        -0x3t
        -0x13t
        -0x47t
        -0x26t
        0x5et
        0x15t
        0x46t
        0x57t
        -0x59t
        -0x73t
        -0x63t
        -0x7ct
        -0x70t
        -0x28t
        -0x55t
        0x0t
        -0x74t
        -0x44t
        -0x2dt
        0xat
        -0x9t
        -0x1ct
        0x58t
        0x5t
        -0x48t
        -0x4dt
        0x45t
        0x6t
        -0x30t
        0x2ct
        0x1et
        -0x71t
        -0x36t
        0x3ft
        0xft
        0x2t
        -0x3ft
        -0x51t
        -0x43t
        0x3t
        0x1t
        0x13t
        -0x76t
        0x6bt
        0x3at
        -0x6ft
        0x11t
        0x41t
        0x4ft
        0x67t
        -0x24t
        -0x16t
        -0x69t
        -0xet
        -0x31t
        -0x32t
        -0x10t
        -0x4ct
        -0x1at
        0x73t
        -0x6at
        -0x54t
        0x74t
        0x22t
        -0x19t
        -0x53t
        0x35t
        -0x7bt
        -0x1et
        -0x7t
        0x37t
        -0x18t
        0x1ct
        0x75t
        -0x21t
        0x6et
        0x47t
        -0xft
        0x1at
        0x71t
        0x1dt
        0x29t
        -0x3bt
        -0x77t
        0x6ft
        -0x49t
        0x62t
        0xet
        -0x56t
        0x18t
        -0x42t
        0x1bt
        -0x4t
        0x56t
        0x3et
        0x4bt
        -0x3at
        -0x2et
        0x79t
        0x20t
        -0x66t
        -0x25t
        -0x40t
        -0x2t
        0x78t
        -0x33t
        0x5at
        -0xct
        0x1ft
        -0x23t
        -0x58t
        0x33t
        -0x78t
        0x7t
        -0x39t
        0x31t
        -0x4ft
        0x12t
        0x10t
        0x59t
        0x27t
        -0x80t
        -0x14t
        0x5ft
        0x60t
        0x51t
        0x7ft
        -0x57t
        0x19t
        -0x4bt
        0x4at
        0xdt
        0x2dt
        -0x1bt
        0x7at
        -0x61t
        -0x6dt
        -0x37t
        -0x64t
        -0x11t
        -0x60t
        -0x20t
        0x3bt
        0x4dt
        -0x52t
        0x2at
        -0xbt
        -0x50t
        -0x38t
        -0x15t
        -0x45t
        0x3ct
        -0x7dt
        0x53t
        -0x67t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        -0x46t
        0x77t
        -0x2at
        0x26t
        -0x1ft
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x20t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x8t
        0x18t
        0x20t
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x18t
        0x10t
        0x8t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x20t
        0x18t
        0x10t
    .end array-data

    :array_c
    .array-data 1
        0x0t
        0x28t
        0x20t
        0x18t
    .end array-data

    :array_d
    .array-data 1
        0x0t
        0x30t
        0x28t
        0x18t
    .end array-data

    :array_e
    .array-data 1
        0x0t
        0x38t
        0x28t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 501
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;-><init>(I)V

    .line 502
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 515
    :sswitch_0
    const/16 v0, 0x20

    iput v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 516
    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLr:J

    .line 517
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLp:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLy:[B

    .line 518
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLq:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLz:[B

    .line 519
    goto/16 :goto_1

    .line 521
    :sswitch_1
    const/16 v0, 0x28

    iput v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 522
    const-wide v0, 0xffffffffffL

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLr:J

    .line 523
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLp:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLy:[B

    .line 524
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLq:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLz:[B

    .line 525
    goto :goto_1

    .line 527
    :sswitch_2
    const/16 v0, 0x30

    iput v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 528
    const-wide v0, 0xffffffffffffL

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLr:J

    .line 529
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLp:[[B

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLy:[B

    .line 530
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLq:[[B

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLz:[B

    .line 531
    goto :goto_1

    .line 533
    :sswitch_3
    const/16 v0, 0x38

    iput v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 534
    const-wide v0, 0xffffffffffffffL

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLr:J

    .line 535
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLp:[[B

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLy:[B

    .line 536
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLq:[[B

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLz:[B

    .line 537
    goto :goto_1

    .line 539
    :sswitch_4
    const/16 v0, 0x40

    iput v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    .line 540
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLr:J

    .line 541
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLp:[[B

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLy:[B

    .line 542
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLq:[[B

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLz:[B

    .line 543
    goto :goto_1

    .line 545
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown blocksize to Rijndael"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :goto_1
    iput p1, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLs:I

    .line 549
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xc0 -> :sswitch_2
        0xe0 -> :sswitch_3
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method private jD()V
    .locals 17

    .line 298
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    .line 300
    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v12, v0, :cond_0

    .line 302
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLu:J

    shr-long/2addr v0, v12

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v13, v0

    .line 303
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    shr-long/2addr v0, v12

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v14, v0

    .line 304
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    shr-long/2addr v0, v12

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v15, v0

    .line 305
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    shr-long/2addr v0, v12

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v2, v0

    move/from16 v16, v2

    .line 307
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﬧ(I)B

    move-result v0

    move-object/from16 v1, p0

    invoke-direct {v1, v14}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->דּ(I)B

    move-result v1

    xor-int/2addr v0, v1

    xor-int/2addr v0, v15

    xor-int v0, v0, v16

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v12

    or-long/2addr v4, v0

    .line 309
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﬧ(I)B

    move-result v0

    move-object/from16 v1, p0

    invoke-direct {v1, v15}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->דּ(I)B

    move-result v1

    xor-int/2addr v0, v1

    xor-int v0, v0, v16

    xor-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v12

    or-long/2addr v6, v0

    .line 311
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﬧ(I)B

    move-result v0

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->דּ(I)B

    move-result v1

    xor-int/2addr v0, v1

    xor-int/2addr v0, v13

    xor-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v12

    or-long/2addr v8, v0

    .line 313
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﬧ(I)B

    move-result v0

    move-object/from16 v1, p0

    invoke-direct {v1, v13}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->דּ(I)B

    move-result v1

    xor-int/2addr v0, v1

    xor-int/2addr v0, v14

    xor-int/2addr v0, v15

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v12

    or-long/2addr v10, v0

    .line 300
    add-int/lit8 v12, v12, 0x8

    goto/16 :goto_0

    .line 316
    :cond_0
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLu:J

    .line 317
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    .line 318
    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    .line 319
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    .line 320
    return-void
.end method

.method private jE()V
    .locals 17

    .line 330
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    .line 331
    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v12, v0, :cond_4

    .line 333
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLu:J

    shr-long/2addr v0, v12

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v13, v0

    .line 334
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    shr-long/2addr v0, v12

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v14, v0

    .line 335
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    shr-long/2addr v0, v12

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v15, v0

    .line 336
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    shr-long/2addr v0, v12

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v2, v0

    move/from16 v16, v2

    .line 341
    if-eqz v13, :cond_0

    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLn:[B

    and-int/lit16 v1, v13, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v13, v0, 0xff

    goto :goto_1

    :cond_0
    const/4 v13, -0x1

    .line 342
    :goto_1
    if-eqz v14, :cond_1

    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLn:[B

    and-int/lit16 v1, v14, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v14, v0, 0xff

    goto :goto_2

    :cond_1
    const/4 v14, -0x1

    .line 343
    :goto_2
    if-eqz v15, :cond_2

    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLn:[B

    and-int/lit16 v1, v15, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v15, v0, 0xff

    goto :goto_3

    :cond_2
    const/4 v15, -0x1

    .line 344
    :goto_3
    if-eqz v16, :cond_3

    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLn:[B

    move/from16 v1, v16

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    move/from16 v16, v1

    goto :goto_4

    :cond_3
    const/16 v16, -0x1

    .line 346
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﹱ(I)B

    move-result v0

    move-object/from16 v1, p0

    invoke-direct {v1, v14}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﭥ(I)B

    move-result v1

    xor-int/2addr v0, v1

    move-object/from16 v1, p0

    invoke-direct {v1, v15}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﮆ(I)B

    move-result v1

    xor-int/2addr v0, v1

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﭝ(I)B

    move-result v1

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v12

    or-long/2addr v4, v0

    .line 348
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﹱ(I)B

    move-result v0

    move-object/from16 v1, p0

    invoke-direct {v1, v15}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﭥ(I)B

    move-result v1

    xor-int/2addr v0, v1

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﮆ(I)B

    move-result v1

    xor-int/2addr v0, v1

    move-object/from16 v1, p0

    invoke-direct {v1, v13}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﭝ(I)B

    move-result v1

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v12

    or-long/2addr v6, v0

    .line 350
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﹱ(I)B

    move-result v0

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﭥ(I)B

    move-result v1

    xor-int/2addr v0, v1

    move-object/from16 v1, p0

    invoke-direct {v1, v13}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﮆ(I)B

    move-result v1

    xor-int/2addr v0, v1

    move-object/from16 v1, p0

    invoke-direct {v1, v14}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﭝ(I)B

    move-result v1

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v12

    or-long/2addr v8, v0

    .line 352
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﹱ(I)B

    move-result v0

    move-object/from16 v1, p0

    invoke-direct {v1, v13}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﭥ(I)B

    move-result v1

    xor-int/2addr v0, v1

    move-object/from16 v1, p0

    invoke-direct {v1, v14}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﮆ(I)B

    move-result v1

    xor-int/2addr v0, v1

    move-object/from16 v1, p0

    invoke-direct {v1, v15}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ﭝ(I)B

    move-result v1

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v12

    or-long/2addr v10, v0

    .line 331
    add-int/lit8 v12, v12, 0x8

    goto/16 :goto_0

    .line 355
    :cond_4
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLu:J

    .line 356
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    .line 357
    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    .line 358
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    .line 359
    return-void
.end method

.method private ʽ([J)V
    .locals 4

    .line 239
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLu:J

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLu:J

    .line 240
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    .line 241
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    const/4 v2, 0x2

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    .line 242
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    const/4 v2, 0x3

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    .line 243
    return-void
.end method

.method private ˉ([BI)V
    .locals 6

    .line 628
    move v4, p2

    .line 630
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLu:J

    .line 631
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    .line 632
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    .line 633
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    .line 635
    const/16 v5, 0x8

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    if-eq v5, v0, :cond_0

    .line 637
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLu:J

    move v2, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLu:J

    .line 638
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    move v2, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    .line 639
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    move v2, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    .line 640
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    move v2, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    .line 635
    add-int/lit8 v5, v5, 0x8

    goto :goto_0

    .line 642
    :cond_0
    return-void
.end method

.method private ˊ(J[B)J
    .locals 7

    .line 268
    const-wide/16 v4, 0x0

    .line 270
    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v6, v0, :cond_0

    .line 272
    shr-long v0, p1, v6

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v6

    or-long/2addr v4, v0

    .line 270
    add-int/lit8 v6, v6, 0x8

    goto :goto_0

    .line 275
    :cond_0
    return-wide v4
.end method

.method private ˊ([[J)V
    .locals 2

    .line 667
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ʽ([J)V

    .line 672
    const/4 v1, 0x1

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aIH:I

    if-ge v1, v0, :cond_0

    .line 674
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aGd:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ᑊ([B)V

    .line 675
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLy:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ᐩ([B)V

    .line 676
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->jD()V

    .line 677
    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ʽ([J)V

    .line 672
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    :cond_0
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aGd:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ᑊ([B)V

    .line 684
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLy:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ᐩ([B)V

    .line 685
    iget v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aIH:I

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ʽ([J)V

    .line 686
    return-void
.end method

.method private ˋ(JI)J
    .locals 4

    .line 249
    ushr-long v0, p1, p3

    iget v2, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    sub-int/2addr v2, p3

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    iget-wide v2, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLr:J

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private ˋ([[J)V
    .locals 3

    .line 705
    iget v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aIH:I

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ʽ([J)V

    .line 706
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aID:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ᑊ([B)V

    .line 707
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLz:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ᐩ([B)V

    .line 712
    iget v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aIH:I

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-lez v2, :cond_0

    .line 714
    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ʽ([J)V

    .line 715
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->jE()V

    .line 716
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aID:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ᑊ([B)V

    .line 717
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLz:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ᐩ([B)V

    .line 712
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 723
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ʽ([J)V

    .line 724
    return-void
.end method

.method private ˌ([BI)V
    .locals 5

    .line 648
    move v3, p2

    .line 650
    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    if-eq v4, v0, :cond_0

    .line 652
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    iget-wide v1, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLu:J

    shr-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 653
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    iget-wide v1, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    shr-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 654
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    iget-wide v1, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    shr-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 655
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    iget-wide v1, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    shr-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 650
    add-int/lit8 v4, v4, 0x8

    goto :goto_0

    .line 657
    :cond_0
    return-void
.end method

.method private ᐩ([B)V
    .locals 3

    .line 259
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ˋ(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    .line 260
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ˋ(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    .line 261
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ˋ(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    .line 262
    return-void
.end method

.method private ᑊ([B)V
    .locals 2

    .line 285
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLu:J

    invoke-direct {p0, v0, v1, p1}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ˊ(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLu:J

    .line 286
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    invoke-direct {p0, v0, v1, p1}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ˊ(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLv:J

    .line 287
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    invoke-direct {p0, v0, v1, p1}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ˊ(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLw:J

    .line 288
    iget-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    invoke-direct {p0, v0, v1, p1}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ˊ(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLx:J

    .line 289
    return-void
.end method

.method private ᕀ([B)[[J
    .locals 16

    .line 369
    const/4 v9, 0x0

    .line 370
    move-object/from16 v0, p1

    array-length v0, v0

    mul-int/lit8 v10, v0, 0x8

    .line 371
    const/4 v0, 0x4

    const/16 v1, 0x40

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[B

    .line 372
    const/16 v0, 0xf

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[J

    .line 374
    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    .line 377
    :sswitch_0
    const/4 v7, 0x4

    .line 378
    goto :goto_1

    .line 380
    :sswitch_1
    const/4 v7, 0x5

    .line 381
    goto :goto_1

    .line 383
    :sswitch_2
    const/4 v7, 0x6

    .line 384
    goto :goto_1

    .line 386
    :sswitch_3
    const/4 v7, 0x7

    .line 387
    goto :goto_1

    .line 389
    :sswitch_4
    const/16 v7, 0x8

    .line 390
    goto :goto_1

    .line 392
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length not 128/160/192/224/256 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLs:I

    if-lt v10, v0, :cond_0

    .line 397
    add-int/lit8 v0, v7, 0x6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aIH:I

    goto :goto_2

    .line 401
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aIH:I

    .line 407
    :goto_2
    const/4 v13, 0x0

    .line 409
    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    if-ge v14, v0, :cond_1

    .line 411
    rem-int/lit8 v0, v14, 0x4

    aget-object v0, v11, v0

    div-int/lit8 v1, v14, 0x4

    move v2, v13

    add-int/lit8 v13, v13, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 409
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 414
    :cond_1
    const/4 v8, 0x0

    .line 419
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v7, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aIH:I

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v0, v1

    if-ge v8, v0, :cond_3

    .line 421
    const/4 v15, 0x0

    :goto_5
    const/4 v0, 0x4

    if-ge v15, v0, :cond_2

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x8

    div-int v0, v8, v0

    aget-object v0, v12, v0

    aget-wide v1, v0, v15

    aget-object v3, v11, v15

    aget-byte v3, v3, v14

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    mul-int/lit8 v5, v8, 0x8

    move-object/from16 v6, p0

    iget v6, v6, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    rem-int/2addr v5, v6

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aput-wide v1, v0, v15

    .line 421
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 419
    :cond_2
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 431
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aIH:I

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v0, v1

    if-ge v8, v0, :cond_f

    .line 433
    const/4 v14, 0x0

    :goto_7
    const/4 v0, 0x4

    if-ge v14, v0, :cond_4

    .line 435
    aget-object v0, v11, v14

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    sget-object v2, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aGd:[B

    add-int/lit8 v3, v14, 0x1

    rem-int/lit8 v3, v3, 0x4

    aget-object v3, v11, v3

    add-int/lit8 v4, v7, -0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 433
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 437
    :cond_4
    const/4 v0, 0x0

    aget-object v0, v11, v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    sget-object v2, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aIE:[I

    move v3, v9

    add-int/lit8 v9, v9, 0x1

    aget v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 439
    const/4 v0, 0x6

    if-gt v7, v0, :cond_7

    .line 441
    const/4 v14, 0x1

    :goto_8
    if-ge v14, v7, :cond_6

    .line 443
    const/4 v15, 0x0

    :goto_9
    const/4 v0, 0x4

    if-ge v15, v0, :cond_5

    .line 445
    aget-object v0, v11, v15

    aget-byte v1, v0, v14

    aget-object v2, v11, v15

    add-int/lit8 v3, v14, -0x1

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v14

    .line 443
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 441
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_6
    goto/16 :goto_f

    .line 451
    :cond_7
    const/4 v14, 0x1

    :goto_a
    const/4 v0, 0x4

    if-ge v14, v0, :cond_9

    .line 453
    const/4 v15, 0x0

    :goto_b
    const/4 v0, 0x4

    if-ge v15, v0, :cond_8

    .line 455
    aget-object v0, v11, v15

    aget-byte v1, v0, v14

    aget-object v2, v11, v15

    add-int/lit8 v3, v14, -0x1

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v14

    .line 453
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 451
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 458
    :cond_9
    const/4 v14, 0x0

    :goto_c
    const/4 v0, 0x4

    if-ge v14, v0, :cond_a

    .line 460
    aget-object v0, v11, v14

    const/4 v1, 0x4

    aget-byte v1, v0, v1

    sget-object v2, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aGd:[B

    aget-object v3, v11, v14

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 458
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 462
    :cond_a
    const/4 v14, 0x5

    :goto_d
    if-ge v14, v7, :cond_c

    .line 464
    const/4 v15, 0x0

    :goto_e
    const/4 v0, 0x4

    if-ge v15, v0, :cond_b

    .line 466
    aget-object v0, v11, v15

    aget-byte v1, v0, v14

    aget-object v2, v11, v15

    add-int/lit8 v3, v14, -0x1

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v14

    .line 464
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    .line 462
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 474
    :cond_c
    :goto_f
    const/4 v14, 0x0

    :goto_10
    if-ge v14, v7, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aIH:I

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v0, v1

    if-ge v8, v0, :cond_e

    .line 476
    const/4 v15, 0x0

    :goto_11
    const/4 v0, 0x4

    if-ge v15, v0, :cond_d

    .line 478
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x8

    div-int v0, v8, v0

    aget-object v0, v12, v0

    aget-wide v1, v0, v15

    aget-object v3, v11, v15

    aget-byte v3, v3, v14

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    mul-int/lit8 v5, v8, 0x8

    move-object/from16 v6, p0

    iget v6, v6, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    rem-int/2addr v5, v6

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aput-wide v1, v0, v15

    .line 476
    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    .line 474
    :cond_d
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_e
    goto/16 :goto_6

    .line 483
    :cond_f
    return-object v12

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xc0 -> :sswitch_2
        0xe0 -> :sswitch_3
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method private ﬧ(I)B
    .locals 3

    .line 158
    if-eqz p1, :cond_0

    .line 160
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLo:[B

    sget-object v1, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLn:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x19

    aget-byte v0, v0, v1

    return v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private דּ(I)B
    .locals 3

    .line 171
    if-eqz p1, :cond_0

    .line 173
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLo:[B

    sget-object v1, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLn:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ﭝ(I)B
    .locals 2

    .line 184
    if-ltz p1, :cond_0

    .line 186
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLo:[B

    add-int/lit16 v1, p1, 0xc7

    aget-byte v0, v0, v1

    return v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ﭥ(I)B
    .locals 2

    .line 197
    if-ltz p1, :cond_0

    .line 199
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLo:[B

    add-int/lit8 v1, p1, 0x68

    aget-byte v0, v0, v1

    return v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ﮆ(I)B
    .locals 2

    .line 210
    if-ltz p1, :cond_0

    .line 212
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLo:[B

    add-int/lit16 v1, p1, 0xee

    aget-byte v0, v0, v1

    return v0

    .line 216
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ﹱ(I)B
    .locals 2

    .line 223
    if-ltz p1, :cond_0

    .line 225
    sget-object v0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLo:[B

    add-int/lit16 v1, p1, 0xdf

    aget-byte v0, v0, v1

    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 2

    .line 580
    iget v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 575
    const-string v0, "Rijndael"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 622
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 2

    .line 589
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLt:[[J

    if-nez v0, :cond_0

    .line 591
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Rijndael engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 596
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 601
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aEW:Z

    if-eqz v0, :cond_3

    .line 606
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ˉ([BI)V

    .line 607
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLt:[[J

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ˊ([[J)V

    .line 608
    invoke-direct {p0, p3, p4}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ˌ([BI)V

    goto :goto_0

    .line 612
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ˉ([BI)V

    .line 613
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLt:[[J

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ˋ([[J)V

    .line 614
    invoke-direct {p0, p3, p4}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ˌ([BI)V

    .line 617
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 563
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 565
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RijndaelEngine;->ᕀ([B)[[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aLt:[[J

    .line 566
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RijndaelEngine;->aEW:Z

    .line 567
    return-void

    .line 570
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Rijndael init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
