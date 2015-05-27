.class public Lo/zx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private blm:Landroid/content/SharedPreferences;

.field private bsn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lo/zx;->blm:Landroid/content/SharedPreferences;

    .line 17
    return-void
.end method


# virtual methods
.method public logout()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lo/zx;->bsn:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public ve()Ljava/lang/String;
    .locals 3

    .line 26
    iget-object v0, p0, Lo/zx;->bsn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lo/zx;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brJ"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/zx;->bsn:Ljava/lang/String;

    .line 29
    :cond_0
    iget-object v0, p0, Lo/zx;->bsn:Ljava/lang/String;

    return-object v0
.end method

.method public ヽ(Ljava/lang/String;)V
    .locals 3

    .line 20
    iget-object v0, p0, Lo/zx;->blm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 21
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brJ"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    return-void
.end method
