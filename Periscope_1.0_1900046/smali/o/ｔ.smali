.class Lo/ｔ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final dV:Landroid/content/Context;

.field private final nK:Lo/sq;

.field private final ok:Lo/qr;

.field private final pr:Lo/sx;

.field private final qi:Lo/ｆ;

.field private final qj:Lo/tg;

.field private final qk:Lo/ｉ;

.field private final ql:Lo/qk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ｆ;Lo/qr;Lo/tg;Lo/ｉ;Lo/sx;Lo/qk;Lo/sq;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/ｔ;->dV:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lo/ｔ;->qi:Lo/ｆ;

    .line 39
    iput-object p3, p0, Lo/ｔ;->ok:Lo/qr;

    .line 40
    iput-object p4, p0, Lo/ｔ;->qj:Lo/tg;

    .line 41
    iput-object p5, p0, Lo/ｔ;->qk:Lo/ｉ;

    .line 42
    iput-object p6, p0, Lo/ｔ;->pr:Lo/sx;

    .line 43
    iput-object p7, p0, Lo/ｔ;->ql:Lo/qk;

    .line 44
    iput-object p8, p0, Lo/ｔ;->nK:Lo/sq;

    .line 45
    return-void
.end method


# virtual methods
.method public Ἴ()V
    .locals 18

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ｔ;->ql:Lo/qk;

    invoke-interface {v0}, Lo/qk;->cy()J

    move-result-wide v6

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ｔ;->qj:Lo/tg;

    iget v0, v0, Lo/tg;->YM:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    .line 54
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check for updates delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ｔ;->pr:Lo/sx;

    invoke-interface {v0}, Lo/sx;->dG()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_update_check"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 59
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check for updates last check time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    add-long v12, v10, v8

    .line 63
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check for updates current time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", next check time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    cmp-long v0, v6, v12

    if-ltz v0, :cond_0

    .line 68
    :try_start_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Performing update check"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lo/qf;

    invoke-direct {v0}, Lo/qf;-><init>()V

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/ｔ;->dV:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/qf;->ᐠ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ｔ;->ok:Lo/qr;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/ｔ;->qk:Lo/ｉ;

    iget-object v1, v1, Lo/ｉ;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14, v1}, Lo/qr;->ʹ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 74
    new-instance v0, Lo/ｖ;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/ｔ;->qi:Lo/ｆ;

    move-object/from16 v2, p0

    iget-object v2, v2, Lo/ｔ;->qi:Lo/ｆ;

    invoke-virtual {v2}, Lo/ｆ;->Ĩ()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p0

    iget-object v3, v3, Lo/ｔ;->qj:Lo/tg;

    iget-object v3, v3, Lo/tg;->YL:Ljava/lang/String;

    move-object/from16 v4, p0

    iget-object v4, v4, Lo/ｔ;->nK:Lo/sq;

    new-instance v5, Lo/ｴ;

    invoke-direct {v5}, Lo/ｴ;-><init>()V

    invoke-direct/range {v0 .. v5}, Lo/ｖ;-><init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;Lo/ｴ;)V

    move-object/from16 v16, v0

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ｔ;->qk:Lo/ｉ;

    move-object/from16 v1, v16

    invoke-virtual {v1, v14, v15, v0}, Lo/ｖ;->ˊ(Ljava/lang/String;Ljava/lang/String;Lo/ｉ;)Lo/ｬ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ｔ;->pr:Lo/sx;

    invoke-interface {v0}, Lo/sx;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_update_check"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ｔ;->pr:Lo/sx;

    invoke-interface {v0}, Lo/sx;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_update_check"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    throw v17

    :goto_0
    goto :goto_1

    .line 92
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Check for updates next check time was not passed"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_1
    return-void
.end method
