.class public Lo/ԁ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ԁ$1;,
        Lo/ԁ$if;,
        Lo/ԁ$ˎ;,
        Lo/ԁ$ˏ;,
        Lo/ԁ$ˋ;,
        Lo/ԁ$ˊ;
    }
.end annotation


# static fields
.field private static final sa:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Lo/\u0501$if;Landroid/util/Pair<Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/ԁ;->sa:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    return-void
.end method

.method private static ɹ(I)I
    .locals 1

    .line 261
    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    .line 262
    :sswitch_0
    const/16 v0, 0x6300

    return v0

    .line 263
    :sswitch_1
    const/16 v0, 0x6300

    return v0

    .line 264
    :sswitch_2
    const v0, 0x18c00

    return v0

    .line 265
    :sswitch_3
    const v0, 0x18c00

    return v0

    .line 266
    :sswitch_4
    const v0, 0x18c00

    return v0

    .line 267
    :sswitch_5
    const v0, 0x31800

    return v0

    .line 268
    :sswitch_6
    const v0, 0x65400

    return v0

    .line 269
    :sswitch_7
    const v0, 0x65400

    return v0

    .line 270
    :sswitch_8
    const v0, 0xe1000

    return v0

    .line 271
    :sswitch_9
    const/high16 v0, 0x140000

    return v0

    .line 272
    :sswitch_a
    const/high16 v0, 0x200000

    return v0

    .line 273
    :sswitch_b
    const/high16 v0, 0x200000

    return v0

    .line 274
    :sswitch_c
    const/high16 v0, 0x220000

    return v0

    .line 275
    :sswitch_d
    const v0, 0x564000

    return v0

    .line 276
    :sswitch_e
    const/high16 v0, 0x900000

    return v0

    .line 277
    :goto_0
    const/4 v0, -0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_7
        0x200 -> :sswitch_8
        0x400 -> :sswitch_9
        0x800 -> :sswitch_a
        0x1000 -> :sswitch_b
        0x2000 -> :sswitch_c
        0x4000 -> :sswitch_d
        0x8000 -> :sswitch_e
    .end sparse-switch
.end method

.method private static ˊ(Lo/ԁ$if;Lo/ԁ$ˋ;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0501$if;Lo/\u0501$\u02cb;)Landroid/util/Pair<Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;>;"
        }
    .end annotation

    .line 121
    :try_start_0
    invoke-static {p0, p1}, Lo/ԁ;->ˋ(Lo/ԁ$if;Lo/ԁ$ˋ;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 122
    :catch_0
    move-exception v2

    .line 125
    new-instance v0, Lo/ԁ$ˊ;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lo/ԁ$ˊ;-><init>(Ljava/lang/Throwable;Lo/ԁ$1;)V

    throw v0
.end method

.method private static ˊ(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 171
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 172
    invoke-static {p0}, Lo/ԁ;->ˋ(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    return v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static ˋ(Lo/ԁ$if;Lo/ԁ$ˋ;)Landroid/util/Pair;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0501$if;Lo/\u0501$\u02cb;)Landroid/util/Pair<Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;>;"
        }
    .end annotation

    .line 131
    iget-object v4, p0, Lo/ԁ$if;->mimeType:Ljava/lang/String;

    .line 132
    invoke-interface/range {p1 .. p1}, Lo/ԁ$ˋ;->getCodecCount()I

    move-result v5

    .line 133
    invoke-interface/range {p1 .. p1}, Lo/ԁ$ˋ;->л()Z

    move-result v6

    .line 135
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_8

    .line 136
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lo/ԁ$ˋ;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v8

    .line 137
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .line 138
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "OMX."

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v6, :cond_0

    const-string v0, ".secure"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 140
    :cond_0
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    .line 141
    const/4 v11, 0x0

    :goto_1
    array-length v0, v10

    if-ge v11, v0, :cond_7

    .line 142
    aget-object v12, v10, v11

    .line 143
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    invoke-virtual {v8, v12}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v13

    .line 145
    iget-object v0, p0, Lo/ԁ$if;->mimeType:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-interface {v1, v0, v13}, Lo/ԁ$ˋ;->ˊ(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v14

    .line 146
    if-nez v6, :cond_3

    .line 148
    sget-object v0, Lo/ԁ;->sa:Ljava/util/HashMap;

    iget-boolean v1, p0, Lo/ԁ$if;->sb:Z

    if-eqz v1, :cond_1

    new-instance v1, Lo/ԁ$if;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v2}, Lo/ԁ$if;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_1
    move-object v1, p0

    :goto_2
    invoke-static {v9, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    if-eqz v14, :cond_5

    .line 151
    sget-object v0, Lo/ԁ;->sa:Ljava/util/HashMap;

    iget-boolean v1, p0, Lo/ԁ$if;->sb:Z

    if-eqz v1, :cond_2

    move-object v1, p0

    goto :goto_3

    :cond_2
    new-instance v1, Lo/ԁ$if;

    const/4 v2, 0x1

    invoke-direct {v1, v4, v2}, Lo/ԁ$if;-><init>(Ljava/lang/String;Z)V

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".secure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 157
    :cond_3
    sget-object v0, Lo/ԁ;->sa:Ljava/util/HashMap;

    iget-boolean v1, p0, Lo/ԁ$if;->sb:Z

    if-ne v1, v14, :cond_4

    move-object v1, p0

    goto :goto_4

    :cond_4
    new-instance v1, Lo/ԁ$if;

    invoke-direct {v1, v4, v14}, Lo/ԁ$if;-><init>(Ljava/lang/String;Z)V

    :goto_4
    invoke-static {v9, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_5
    :goto_5
    sget-object v0, Lo/ԁ;->sa:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    sget-object v0, Lo/ԁ;->sa:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0

    .line 141
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 135
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 167
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ˋ(Ljava/lang/String;Z)Lo/ʄ;
    .locals 4

    .line 68
    invoke-static {p0, p1}, Lo/ԁ;->ˎ(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v3

    .line 69
    if-nez v3, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lo/ʄ;

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-static {v2}, Lo/ԁ;->ˊ(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lo/ʄ;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static ˋ(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 180
    const-string v0, "adaptive-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized ˎ(Ljava/lang/String;Z)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Z)Landroid/util/Pair<Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;>;"
        }
    .end annotation

    const-class v6, Lo/ԁ;

    monitor-enter v6

    .line 98
    :try_start_0
    new-instance v3, Lo/ԁ$if;

    invoke-direct {v3, p0, p1}, Lo/ԁ$if;-><init>(Ljava/lang/String;Z)V

    .line 99
    sget-object v0, Lo/ԁ;->sa:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lo/ԁ;->sa:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    monitor-exit v6

    return-object v0

    .line 102
    :cond_0
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v4, Lo/ԁ$ˏ;

    invoke-direct {v4, p1}, Lo/ԁ$ˏ;-><init>(Z)V

    goto :goto_0

    :cond_1
    new-instance v4, Lo/ԁ$ˎ;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lo/ԁ$ˎ;-><init>(Lo/ԁ$1;)V

    .line 104
    :goto_0
    invoke-static {v3, v4}, Lo/ԁ;->ˊ(Lo/ԁ$if;Lo/ԁ$ˋ;)Landroid/util/Pair;

    move-result-object v5

    .line 106
    if-eqz p1, :cond_2

    if-nez v5, :cond_2

    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 108
    new-instance v4, Lo/ԁ$ˎ;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lo/ԁ$ˎ;-><init>(Lo/ԁ$1;)V

    .line 109
    invoke-static {v3, v4}, Lo/ԁ;->ˊ(Lo/ԁ$if;Lo/ԁ$ˋ;)Landroid/util/Pair;

    move-result-object v5

    .line 110
    if-eqz v5, :cond_2

    .line 111
    const-string v0, "MediaCodecUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Assuming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_2
    monitor-exit v6

    return-object v5

    :catchall_0
    move-exception p0

    monitor-exit v6

    throw p0
.end method

.method public static з()I
    .locals 7

    .line 237
    const-string v0, "video/avc"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ԁ;->ˎ(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v2

    .line 238
    if-nez v2, :cond_0

    .line 239
    const/4 v0, 0x0

    return v0

    .line 242
    :cond_0
    const/4 v3, 0x0

    .line 243
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-object v4, v0

    .line 244
    const/4 v5, 0x0

    :goto_0
    iget-object v0, v4, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v0, v0

    if-ge v5, v0, :cond_1

    .line 245
    iget-object v0, v4, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aget-object v6, v0, v5

    .line 246
    iget v0, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v0}, Lo/ԁ;->ɹ(I)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 244
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 250
    :cond_1
    return v3
.end method
