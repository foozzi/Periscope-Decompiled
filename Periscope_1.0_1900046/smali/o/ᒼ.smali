.class public Lo/ᒼ;
.super Landroid/content/ContextWrapper;
.source ""


# instance fields
.field private ᔀ:I

.field private ᔁ:Landroid/content/res/Resources$Theme;

.field private 亅:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 38
    iput p2, p0, Lo/ᒼ;->ᔀ:I

    .line 39
    return-void
.end method

.method private ﹼ()V
    .locals 4

    .line 92
    iget-object v0, p0, Lo/ᒼ;->ᔁ:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 93
    :goto_0
    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {p0}, Lo/ᒼ;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lo/ᒼ;->ᔁ:Landroid/content/res/Resources$Theme;

    .line 95
    invoke-virtual {p0}, Lo/ᒼ;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 96
    if-eqz v3, :cond_1

    .line 97
    iget-object v0, p0, Lo/ᒼ;->ᔁ:Landroid/content/res/Resources$Theme;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lo/ᒼ;->ᔁ:Landroid/content/res/Resources$Theme;

    iget v1, p0, Lo/ᒼ;->ᔀ:I

    invoke-virtual {p0, v0, v1, v2}, Lo/ᒼ;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 101
    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 67
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lo/ᒼ;->亅:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lo/ᒼ;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lo/ᒼ;->亅:Landroid/view/LayoutInflater;

    .line 71
    :cond_0
    iget-object v0, p0, Lo/ᒼ;->亅:Landroid/view/LayoutInflater;

    return-object v0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lo/ᒼ;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/ᒼ;->ᔁ:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lo/ᒼ;->ᔁ:Landroid/content/res/Resources$Theme;

    return-object v0

    .line 57
    :cond_0
    iget v0, p0, Lo/ᒼ;->ᔀ:I

    if-nez v0, :cond_1

    .line 58
    sget v0, Lo/ڊ$ʼ;->Theme_AppCompat_Light:I

    iput v0, p0, Lo/ᒼ;->ᔀ:I

    .line 60
    :cond_1
    invoke-direct {p0}, Lo/ᒼ;->ﹼ()V

    .line 62
    iget-object v0, p0, Lo/ᒼ;->ᔁ:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 89
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 43
    iput p1, p0, Lo/ᒼ;->ᔀ:I

    .line 44
    invoke-direct {p0}, Lo/ᒼ;->ﹼ()V

    .line 45
    return-void
.end method

.method public ﹻ()I
    .locals 1

    .line 48
    iget v0, p0, Lo/ᒼ;->ᔀ:I

    return v0
.end method
