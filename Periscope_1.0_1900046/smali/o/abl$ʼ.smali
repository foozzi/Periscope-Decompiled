.class Lo/abl$ʼ;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02bc"
.end annotation


# instance fields
.field private bvd:I

.field private bwd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<Lo/abl;>;"
        }
    .end annotation
.end field

.field private bwi:Z

.field private bwj:Z

.field private bwk:Z

.field private bwl:Z

.field private bwm:Z

.field private bwn:Z

.field private bwo:Z

.field private bwp:Z

.field private bwq:Z

.field private bwr:Z

.field private bws:Z

.field private bwt:I

.field private bwu:Z

.field private bwv:Z

.field private bww:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
        }
    .end annotation
.end field

.field private bwx:Z

.field private bwy:Lo/abl$ʻ;

.field private γ:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/ref/WeakReference<Lo/abl;>;)V"
        }
    .end annotation

    .line 1079
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/abl$ʼ;->bww:Ljava/util/ArrayList;

    .line 1601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/abl$ʼ;->bwx:Z

    .line 1080
    const/4 v0, 0x0

    iput v0, p0, Lo/abl$ʼ;->bvd:I

    .line 1081
    const/4 v0, 0x0

    iput v0, p0, Lo/abl$ʼ;->γ:I

    .line 1082
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/abl$ʼ;->bwu:Z

    .line 1083
    const/4 v0, 0x1

    iput v0, p0, Lo/abl$ʼ;->bwt:I

    .line 1084
    iput-object p1, p0, Lo/abl$ʼ;->bwd:Ljava/lang/ref/WeakReference;

    .line 1085
    return-void
.end method

.method private wf()V
    .locals 1

    .line 1108
    iget-boolean v0, p0, Lo/abl$ʼ;->bwq:Z

    if-eqz v0, :cond_0

    .line 1109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/abl$ʼ;->bwq:Z

    .line 1110
    iget-object v0, p0, Lo/abl$ʼ;->bwy:Lo/abl$ʻ;

    invoke-virtual {v0}, Lo/abl$ʻ;->wd()V

    .line 1112
    :cond_0
    return-void
.end method

.method private wg()V
    .locals 1

    .line 1119
    iget-boolean v0, p0, Lo/abl$ʼ;->bwp:Z

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lo/abl$ʼ;->bwy:Lo/abl$ʻ;

    invoke-virtual {v0}, Lo/abl$ʻ;->finish()V

    .line 1121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/abl$ʼ;->bwp:Z

    .line 1122
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/abl$ʽ;->ˎ(Lo/abl$ʼ;)V

    .line 1124
    :cond_0
    return-void
.end method

.method private wh()V
    .locals 23

    .line 1126
    new-instance v0, Lo/abl$ʻ;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/abl$ʼ;->bwd:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lo/abl$ʻ;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/abl$ʼ;->bwy:Lo/abl$ʻ;

    .line 1127
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/abl$ʼ;->bwp:Z

    .line 1128
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/abl$ʼ;->bwq:Z

    .line 1130
    const/4 v2, 0x0

    .line 1131
    const/4 v3, 0x0

    .line 1132
    const/4 v4, 0x0

    .line 1133
    const/4 v5, 0x0

    .line 1134
    const/4 v6, 0x0

    .line 1135
    const/4 v7, 0x0

    .line 1136
    const/4 v8, 0x0

    .line 1137
    const/4 v9, 0x0

    .line 1138
    const/4 v10, 0x0

    .line 1139
    const/4 v11, 0x0

    .line 1142
    :goto_0
    :try_start_0
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1144
    :goto_1
    move-object/from16 v0, p0

    :try_start_1
    iget-boolean v0, v0, Lo/abl$ʼ;->bwi:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 1145
    monitor-exit v12

    .line 1404
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v13

    monitor-enter v13

    .line 1405
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lo/abl$ʼ;->wf()V

    .line 1406
    invoke-direct/range {p0 .. p0}, Lo/abl$ʼ;->wg()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1407
    monitor-exit v13

    goto :goto_2

    :catchall_0
    move-exception v14

    monitor-exit v13

    throw v14

    :goto_2
    return-void

    .line 1148
    :cond_0
    move-object/from16 v0, p0

    :try_start_3
    iget-object v0, v0, Lo/abl$ʼ;->bww:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abl$ʼ;->bww:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v11, v0

    .line 1150
    goto/16 :goto_6

    .line 1154
    :cond_1
    const/4 v13, 0x0

    .line 1155
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwl:Z

    move-object/from16 v1, p0

    iget-boolean v1, v1, Lo/abl$ʼ;->bwk:Z

    if-eq v0, v1, :cond_2

    .line 1156
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lo/abl$ʼ;->bwk:Z

    .line 1157
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwk:Z

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/abl$ʼ;->bwl:Z

    .line 1158
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1165
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bws:Z

    if-eqz v0, :cond_3

    .line 1169
    invoke-direct/range {p0 .. p0}, Lo/abl$ʼ;->wf()V

    .line 1170
    invoke-direct/range {p0 .. p0}, Lo/abl$ʼ;->wg()V

    .line 1171
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/abl$ʼ;->bws:Z

    .line 1172
    const/4 v8, 0x1

    .line 1176
    :cond_3
    if-eqz v4, :cond_4

    .line 1177
    invoke-direct/range {p0 .. p0}, Lo/abl$ʼ;->wf()V

    .line 1178
    invoke-direct/range {p0 .. p0}, Lo/abl$ʼ;->wg()V

    .line 1179
    const/4 v4, 0x0

    .line 1183
    :cond_4
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwq:Z

    if-eqz v0, :cond_5

    .line 1187
    invoke-direct/range {p0 .. p0}, Lo/abl$ʼ;->wf()V

    .line 1191
    :cond_5
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwp:Z

    if-eqz v0, :cond_8

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abl$ʼ;->bwd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abl;

    move-object v14, v0

    .line 1193
    if-nez v14, :cond_6

    const/4 v15, 0x0

    goto :goto_3

    :cond_6
    invoke-static {v14}, Lo/abl;->ʻ(Lo/abl;)Z

    move-result v15

    .line 1195
    :goto_3
    if-eqz v15, :cond_7

    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Lo/abl$ʽ;->wo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1196
    :cond_7
    invoke-direct/range {p0 .. p0}, Lo/abl$ʼ;->wg()V

    .line 1204
    :cond_8
    if-eqz v13, :cond_9

    .line 1205
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Lo/abl$ʽ;->wp()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abl$ʼ;->bwy:Lo/abl$ʻ;

    invoke-virtual {v0}, Lo/abl$ʻ;->finish()V

    .line 1214
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwm:Z

    if-nez v0, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwo:Z

    if-nez v0, :cond_b

    .line 1218
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwq:Z

    if-eqz v0, :cond_a

    .line 1219
    invoke-direct/range {p0 .. p0}, Lo/abl$ʼ;->wf()V

    .line 1221
    :cond_a
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/abl$ʼ;->bwo:Z

    .line 1222
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/abl$ʼ;->bwn:Z

    .line 1223
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1227
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwm:Z

    if-eqz v0, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwo:Z

    if-eqz v0, :cond_c

    .line 1231
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/abl$ʼ;->bwo:Z

    .line 1232
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1235
    :cond_c
    if-eqz v7, :cond_d

    .line 1239
    const/4 v6, 0x0

    .line 1240
    const/4 v7, 0x0

    .line 1241
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/abl$ʼ;->bwv:Z

    .line 1242
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1246
    :cond_d
    invoke-direct/range {p0 .. p0}, Lo/abl$ʼ;->wj()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1249
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwp:Z

    if-nez v0, :cond_f

    .line 1250
    if-eqz v8, :cond_e

    .line 1251
    const/4 v8, 0x0

    goto :goto_5

    .line 1252
    :cond_e
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lo/abl$ʽ;->ˋ(Lo/abl$ʼ;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v0, :cond_f

    .line 1254
    move-object/from16 v0, p0

    :try_start_4
    iget-object v0, v0, Lo/abl$ʼ;->bwy:Lo/abl$ʻ;

    invoke-virtual {v0}, Lo/abl$ʻ;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1258
    goto :goto_4

    .line 1255
    :catch_0
    move-exception v14

    .line 1256
    :try_start_5
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lo/abl$ʽ;->ˎ(Lo/abl$ʼ;)V

    .line 1257
    throw v14

    .line 1259
    :goto_4
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/abl$ʼ;->bwp:Z

    .line 1260
    const/4 v2, 0x1

    .line 1262
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1266
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwp:Z

    if-eqz v0, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwq:Z

    if-nez v0, :cond_10

    .line 1267
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/abl$ʼ;->bwq:Z

    .line 1268
    const/4 v3, 0x1

    .line 1269
    const/4 v5, 0x1

    .line 1272
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwq:Z

    if-eqz v0, :cond_12

    .line 1273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/abl$ʼ;->bwx:Z

    if-eqz v0, :cond_11

    .line 1274
    const/4 v5, 0x1

    .line 1275
    move-object/from16 v0, p0

    iget v9, v0, Lo/abl$ʼ;->bvd:I

    .line 1276
    move-object/from16 v0, p0

    iget v10, v0, Lo/abl$ʼ;->γ:I

    .line 1277
    const/4 v6, 0x1

    .line 1285
    const/4 v3, 0x1

    .line 1287
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/abl$ʼ;->bwx:Z

    .line 1289
    :cond_11
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/abl$ʼ;->bwu:Z

    .line 1290
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1291
    goto :goto_6

    .line 1310
    :cond_12
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1311
    goto/16 :goto_1

    .line 1312
    :goto_6
    monitor-exit v12

    goto :goto_7

    :catchall_1
    move-exception v16

    monitor-exit v12

    :try_start_6
    throw v16

    .line 1314
    :goto_7
    if-eqz v11, :cond_13

    .line 1315
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    .line 1316
    const/4 v11, 0x0

    .line 1317
    goto/16 :goto_0

    .line 1320
    :cond_13
    if-eqz v3, :cond_15

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abl$ʼ;->bwy:Lo/abl$ʻ;

    invoke-virtual {v0}, Lo/abl$ʻ;->wb()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1325
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v12

    monitor-enter v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1326
    const/4 v0, 0x1

    move-object/from16 v1, p0

    :try_start_7
    iput-boolean v0, v1, Lo/abl$ʼ;->bwr:Z

    .line 1327
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1328
    monitor-exit v12

    goto :goto_8

    :catchall_2
    move-exception v17

    monitor-exit v12

    :try_start_8
    throw v17

    :goto_8
    goto :goto_a

    .line 1330
    :cond_14
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v12

    monitor-enter v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1331
    const/4 v0, 0x1

    move-object/from16 v1, p0

    :try_start_9
    iput-boolean v0, v1, Lo/abl$ʼ;->bwr:Z

    .line 1332
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/abl$ʼ;->bwn:Z

    .line 1333
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1334
    monitor-exit v12

    goto :goto_9

    :catchall_3
    move-exception v18

    monitor-exit v12

    :try_start_a
    throw v18

    .line 1335
    :goto_9
    goto/16 :goto_0

    .line 1337
    :goto_a
    const/4 v3, 0x0

    .line 1340
    :cond_15
    if-eqz v2, :cond_17

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abl$ʼ;->bwd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abl;

    move-object v12, v0

    .line 1345
    if-eqz v12, :cond_16

    .line 1346
    invoke-static {v12}, Lo/abl;->ʼ(Lo/abl;)Lo/abl$ͺ;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/abl$ʼ;->bwy:Lo/abl$ʻ;

    iget-object v1, v1, Lo/abl$ʻ;->bwg:Landroid/opengl/EGLConfig;

    invoke-interface {v0, v1}, Lo/abl$ͺ;->ˊ(Landroid/opengl/EGLConfig;)V

    .line 1348
    :cond_16
    const/4 v2, 0x0

    .line 1351
    :cond_17
    if-eqz v5, :cond_19

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abl$ʼ;->bwd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abl;

    move-object v12, v0

    .line 1356
    if-eqz v12, :cond_18

    .line 1357
    invoke-static {v12}, Lo/abl;->ʼ(Lo/abl;)Lo/abl$ͺ;

    move-result-object v0

    invoke-interface {v0, v9, v10}, Lo/abl$ͺ;->ﹷ(II)V

    .line 1359
    :cond_18
    const/4 v5, 0x0

    .line 1366
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abl$ʼ;->bwd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abl;

    move-object v12, v0

    .line 1367
    if-eqz v12, :cond_1a

    .line 1368
    invoke-static {v12}, Lo/abl;->ʼ(Lo/abl;)Lo/abl$ͺ;

    move-result-object v0

    invoke-interface {v0}, Lo/abl$ͺ;->uG()V

    .line 1371
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abl$ʼ;->bwy:Lo/abl$ʻ;

    invoke-virtual {v0}, Lo/abl$ʻ;->wc()I

    move-result v12

    .line 1372
    sparse-switch v12, :sswitch_data_0

    goto :goto_b

    .line 1374
    :sswitch_0
    goto :goto_c

    .line 1379
    :sswitch_1
    const/4 v4, 0x1

    .line 1380
    goto :goto_c

    .line 1386
    :goto_b
    const-string v0, "GLThread"

    const-string v1, "eglSwapBuffers"

    invoke-static {v0, v1, v12}, Lo/abl$ʻ;->ˋ(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1388
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v13

    monitor-enter v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1389
    const/4 v0, 0x1

    move-object/from16 v1, p0

    :try_start_b
    iput-boolean v0, v1, Lo/abl$ʼ;->bwn:Z

    .line 1390
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1391
    monitor-exit v13

    goto :goto_c

    :catchall_4
    move-exception v19

    monitor-exit v13

    :try_start_c
    throw v19
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1395
    :goto_c
    if-eqz v6, :cond_1b

    .line 1396
    const/4 v7, 0x1

    .line 1398
    :cond_1b
    goto/16 :goto_0

    .line 1404
    :catchall_5
    move-exception v20

    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v21

    monitor-enter v21

    .line 1405
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lo/abl$ʼ;->wf()V

    .line 1406
    invoke-direct/range {p0 .. p0}, Lo/abl$ʼ;->wg()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1407
    monitor-exit v21

    goto :goto_d

    :catchall_6
    move-exception v22

    monitor-exit v21

    throw v22

    :goto_d
    throw v20

    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private wj()Z
    .locals 2

    .line 1416
    iget-boolean v0, p0, Lo/abl$ʼ;->bwl:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/abl$ʼ;->bwm:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/abl$ʼ;->bwn:Z

    if-nez v0, :cond_1

    iget v0, p0, Lo/abl$ʼ;->bvd:I

    if-lez v0, :cond_1

    iget v0, p0, Lo/abl$ʼ;->γ:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lo/abl$ʼ;->bwu:Z

    if-nez v0, :cond_0

    iget v0, p0, Lo/abl$ʼ;->bwt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic ˊ(Lo/abl$ʼ;Z)Z
    .locals 0

    .line 1077
    iput-boolean p1, p0, Lo/abl$ʼ;->bwj:Z

    return p1
.end method


# virtual methods
.method public getRenderMode()I
    .locals 3

    .line 1432
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v1

    monitor-enter v1

    .line 1433
    :try_start_0
    iget v0, p0, Lo/abl$ʼ;->bwt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 1434
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public requestRender()V
    .locals 3

    .line 1438
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v1

    monitor-enter v1

    .line 1439
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lo/abl$ʼ;->bwu:Z

    .line 1440
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1441
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 1442
    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/abl$ʼ;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/abl$ʼ;->setName(Ljava/lang/String;)V

    .line 1095
    :try_start_0
    invoke-direct {p0}, Lo/abl$ʼ;->wh()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/abl$ʽ;->ˊ(Lo/abl$ʼ;)V

    .line 1100
    goto :goto_0

    .line 1096
    :catch_0
    move-exception v3

    .line 1099
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/abl$ʽ;->ˊ(Lo/abl$ʼ;)V

    .line 1100
    goto :goto_0

    .line 1099
    :catchall_0
    move-exception v4

    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/abl$ʽ;->ˊ(Lo/abl$ʼ;)V

    throw v4

    .line 1101
    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 4

    .line 1422
    const/4 v0, 0x0

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1423
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1425
    :cond_1
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v2

    monitor-enter v2

    .line 1426
    :try_start_0
    iput p1, p0, Lo/abl$ʼ;->bwt:I

    .line 1427
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1428
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 1429
    :goto_0
    return-void
.end method

.method public wi()Z
    .locals 1

    .line 1412
    iget-boolean v0, p0, Lo/abl$ʼ;->bwp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/abl$ʼ;->bwq:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/abl$ʼ;->wj()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public wk()V
    .locals 4

    .line 1445
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v1

    monitor-enter v1

    .line 1449
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lo/abl$ʼ;->bwm:Z

    .line 1450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/abl$ʼ;->bwr:Z

    .line 1451
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1454
    :goto_0
    iget-boolean v0, p0, Lo/abl$ʼ;->bwo:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/abl$ʼ;->bwr:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/abl$ʼ;->bwj:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1456
    :try_start_1
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1459
    goto :goto_0

    .line 1457
    :catch_0
    move-exception v2

    .line 1458
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1459
    goto :goto_0

    .line 1461
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    .line 1462
    :goto_1
    return-void
.end method

.method public wl()V
    .locals 4

    .line 1465
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v1

    monitor-enter v1

    .line 1469
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lo/abl$ʼ;->bwm:Z

    .line 1470
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1471
    :goto_0
    iget-boolean v0, p0, Lo/abl$ʼ;->bwo:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/abl$ʼ;->bwj:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1473
    :try_start_1
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1476
    goto :goto_0

    .line 1474
    :catch_0
    move-exception v2

    .line 1475
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1476
    goto :goto_0

    .line 1478
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    .line 1479
    :goto_1
    return-void
.end method

.method public wm()V
    .locals 4

    .line 1550
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v1

    monitor-enter v1

    .line 1551
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lo/abl$ʼ;->bwi:Z

    .line 1552
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1553
    :goto_0
    iget-boolean v0, p0, Lo/abl$ʼ;->bwj:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1555
    :try_start_1
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1558
    goto :goto_0

    .line 1556
    :catch_0
    move-exception v2

    .line 1557
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1558
    goto :goto_0

    .line 1560
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    .line 1561
    :goto_1
    return-void
.end method

.method public wn()V
    .locals 1

    .line 1564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/abl$ʼ;->bws:Z

    .line 1565
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1566
    return-void
.end method

.method public ﹻ(II)V
    .locals 4

    .line 1524
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v1

    monitor-enter v1

    .line 1525
    :try_start_0
    iput p1, p0, Lo/abl$ʼ;->bvd:I

    .line 1526
    iput p2, p0, Lo/abl$ʼ;->γ:I

    .line 1527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/abl$ʼ;->bwx:Z

    .line 1528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/abl$ʼ;->bwu:Z

    .line 1529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/abl$ʼ;->bwv:Z

    .line 1530
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1534
    :goto_0
    iget-boolean v0, p0, Lo/abl$ʼ;->bwj:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/abl$ʼ;->bwl:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/abl$ʼ;->bwv:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/abl$ʼ;->wi()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    :try_start_1
    invoke-static {}, Lo/abl;->wa()Lo/abl$ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1542
    goto :goto_0

    .line 1540
    :catch_0
    move-exception v2

    .line 1541
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1542
    goto :goto_0

    .line 1544
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    .line 1545
    :goto_1
    return-void
.end method
