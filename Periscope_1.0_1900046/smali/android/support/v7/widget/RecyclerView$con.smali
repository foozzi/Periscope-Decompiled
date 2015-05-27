.class Landroid/support/v7/widget/RecyclerView$con;
.super Landroid/support/v7/widget/RecyclerView$ˋ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "con"
.end annotation


# instance fields
.field final synthetic aB:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 3252
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ˋ;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;Lo/ﮂ;)V
    .locals 0

    .line 3252
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$con;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 3255
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˎ(Ljava/lang/String;)V

    .line 3256
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3260
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 3261
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ι(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 3263
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 3264
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ι(Landroid/support/v7/widget/RecyclerView;)V

    .line 3266
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0}, Lo/ᴗ;->ﯿ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3267
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3269
    :cond_1
    return-void
.end method

.method כ()V
    .locals 2

    .line 3304
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʾ(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʿ(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˈ(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3305
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->ˉ(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3307
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˎ(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 3308
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3310
    :goto_0
    return-void
.end method

.method public ᐟ(II)V
    .locals 2

    .line 3281
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˎ(Ljava/lang/String;)V

    .line 3282
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0, p1, p2}, Lo/ᴗ;->ՙ(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3283
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$con;->כ()V

    .line 3285
    :cond_0
    return-void
.end method

.method public יּ(II)V
    .locals 2

    .line 3273
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˎ(Ljava/lang/String;)V

    .line 3274
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$con;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0, p1, p2}, Lo/ᴗ;->ʹ(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3275
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$con;->כ()V

    .line 3277
    :cond_0
    return-void
.end method
