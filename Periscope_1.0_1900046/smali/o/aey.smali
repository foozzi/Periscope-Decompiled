.class Lo/aey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bBV:Lo/aet;


# direct methods
.method constructor <init>(Lo/aet;)V
    .locals 0

    .line 1193
    iput-object p1, p0, Lo/aey;->bBV:Lo/aet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ᵔ(Lo/aet;)Lo/akq;

    move-result-object v0

    invoke-virtual {v0}, Lo/akq;->AZ()J

    move-result-wide v5

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ᵔ(Lo/aet;)Lo/akq;

    move-result-object v0

    invoke-virtual {v0}, Lo/akq;->Ba()J

    move-result-wide v7

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ᵔ(Lo/aet;)Lo/akq;

    move-result-object v0

    invoke-virtual {v0}, Lo/akq;->Bb()Ljava/util/Date;

    move-result-object v9

    .line 1200
    if-nez v9, :cond_0

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    iget-object v0, v0, Lo/aet;->bBT:Landroid/os/Handler;

    move-object/from16 v1, p0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1203
    return-void

    .line 1207
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1208
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-nez v0, :cond_1

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ᵢ(Lo/aet;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ᵢ(Lo/aet;)J

    move-result-wide v0

    sub-long v0, v10, v0

    const-wide/16 v2, 0x2ee0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ᵔ(Lo/aet;)Lo/akq;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1213
    const-string v0, "RTMP"

    const-string v1, "Reconnect on zero-send timeout"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lo/aet;->ˊ(Lo/aet;J)J

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ᵔ(Lo/aet;)Lo/akq;

    move-result-object v0

    invoke-virtual {v0}, Lo/akq;->Bc()V

    goto :goto_0

    .line 1220
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0, v10, v11}, Lo/aet;->ˊ(Lo/aet;J)J

    .line 1224
    :cond_2
    :goto_0
    const/4 v12, 0x0

    .line 1225
    move-object/from16 v13, p0

    monitor-enter v13

    .line 1226
    move-object/from16 v0, p0

    :try_start_0
    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ⁱ(Lo/aet;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ⁱ(Lo/aet;)J

    move-result-wide v0

    sub-long v0, v10, v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 1228
    const-string v0, "RTMP"

    const-string v1, "Restart encoder on video output timeout"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lo/aet;->ˋ(Lo/aet;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    const/4 v12, 0x1

    .line 1233
    :cond_3
    monitor-exit v13

    goto :goto_1

    :catchall_0
    move-exception v14

    monitor-exit v13

    throw v14

    .line 1234
    :goto_1
    if-eqz v12, :cond_4

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ﾞ(Lo/aet;)Lo/yp;

    move-result-object v0

    invoke-interface {v0}, Lo/yp;->ut()V

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ᵔ(Lo/aet;)Lo/akq;

    move-result-object v0

    invoke-virtual {v0}, Lo/akq;->AS()V

    .line 1241
    :cond_4
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 1242
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v14, v0, v2

    .line 1243
    const-wide/16 v16, 0x0

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ﹶ(Lo/aet;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-lez v0, :cond_5

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ﹶ(Lo/aet;)J

    move-result-wide v0

    sub-long v16, v7, v0

    .line 1249
    :cond_5
    const-wide/16 v0, 0x0

    cmpl-double v0, v14, v0

    if-lez v0, :cond_6

    .line 1250
    long-to-double v0, v5

    div-double/2addr v0, v14

    double-to-long v5, v0

    .line 1251
    move-wide/from16 v0, v16

    long-to-double v0, v0

    div-double/2addr v0, v14

    double-to-long v2, v0

    move-wide/from16 v16, v2

    .line 1253
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ﹺ(Lo/aet;)Lo/akp;

    move-result-object v0

    long-to-int v1, v5

    move-wide/from16 v2, v16

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lo/akp;->ʺ(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1254
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change video rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lo/aey;->bBV:Lo/aet;

    invoke-static {v2}, Lo/aet;->ﹺ(Lo/aet;)Lo/akp;

    move-result-object v2

    invoke-virtual {v2}, Lo/akp;->AH()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ﾞ(Lo/aet;)Lo/yp;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/aey;->bBV:Lo/aet;

    invoke-static {v1}, Lo/aet;->ﹺ(Lo/aet;)Lo/akp;

    move-result-object v1

    invoke-virtual {v1}, Lo/akp;->AH()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-interface {v0, v1}, Lo/yp;->ﻠ(I)V

    .line 1259
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0, v7, v8}, Lo/aet;->ˎ(Lo/aet;J)J

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ﹺ(Lo/aet;)Lo/akp;

    move-result-object v0

    invoke-virtual {v0}, Lo/akp;->AD()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ｰ(Lo/aet;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "BadConnection"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ʳ(Lo/aet;)V

    .line 1268
    long-to-int v0, v5

    mul-int/lit8 v0, v0, 0x8

    div-int/lit16 v1, v0, 0x400

    move/from16 v18, v1

    .line 1269
    move-wide/from16 v0, v16

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit16 v1, v0, 0x400

    move/from16 v19, v1

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ﾞ(Lo/aet;)Lo/yp;

    move-result-object v0

    invoke-interface {v0}, Lo/yp;->ur()I

    move-result v0

    div-int/lit16 v1, v0, 0x400

    move/from16 v20, v1

    .line 1272
    new-instance v21, Ljava/text/DecimalFormat;

    const-string v0, "#.#"

    move-object/from16 v1, v21

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1273
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rate/Sent/Not Sent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kbits/s fps req/actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lo/aey;->bBV:Lo/aet;

    invoke-static {v2}, Lo/aet;->ﹺ(Lo/aet;)Lo/akp;

    move-result-object v2

    invoke-virtual {v2}, Lo/akp;->AI()D

    move-result-wide v2

    move-object/from16 v4, v21

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lo/aey;->bBV:Lo/aet;

    invoke-static {v2}, Lo/aet;->ﹺ(Lo/aet;)Lo/akp;

    move-result-object v2

    invoke-virtual {v2}, Lo/akp;->AJ()D

    move-result-wide v2

    move-object/from16 v4, v21

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aey;->bBV:Lo/aet;

    iget-object v0, v0, Lo/aet;->bBT:Landroid/os/Handler;

    move-object/from16 v1, p0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1276
    return-void
.end method
