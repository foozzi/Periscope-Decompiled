.class public Lo/ﹹ$if;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﹹ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field private ѕ:Landroid/os/Parcelable;

.field final synthetic ӧ:Lo/ﹹ;


# direct methods
.method public constructor <init>(Lo/ﹹ;)V
    .locals 1

    .line 798
    iput-object p1, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 800
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ﹹ$if;->ѕ:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 804
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/ﹹ;->ƨ:Z

    .line 805
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    iget-object v1, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    iget v1, v1, Lo/ﹹ;->ʎ:I

    iput v1, v0, Lo/ﹹ;->ʝ:I

    .line 806
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    iget-object v1, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    invoke-virtual {v1}, Lo/ﹹ;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lo/ﹹ;->ʎ:I

    .line 810
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    invoke-virtual {v0}, Lo/ﹹ;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ﹹ$if;->ѕ:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    iget v0, v0, Lo/ﹹ;->ʝ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    iget v0, v0, Lo/ﹹ;->ʎ:I

    if-lez v0, :cond_0

    .line 812
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    iget-object v1, p0, Lo/ﹹ$if;->ѕ:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lo/ﹹ;->ˊ(Lo/ﹹ;Landroid/os/Parcelable;)V

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ﹹ$if;->ѕ:Landroid/os/Parcelable;

    goto :goto_0

    .line 815
    :cond_0
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    invoke-virtual {v0}, Lo/ﹹ;->ᴲ()V

    .line 817
    :goto_0
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    invoke-virtual {v0}, Lo/ﹹ;->ᓑ()V

    .line 818
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    invoke-virtual {v0}, Lo/ﹹ;->requestLayout()V

    .line 819
    return-void
.end method

.method public onInvalidated()V
    .locals 3

    .line 823
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/ﹹ;->ƨ:Z

    .line 825
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    invoke-virtual {v0}, Lo/ﹹ;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    invoke-static {v0}, Lo/ﹹ;->ˊ(Lo/ﹹ;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lo/ﹹ$if;->ѕ:Landroid/os/Parcelable;

    .line 832
    :cond_0
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    iget-object v1, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    iget v1, v1, Lo/ﹹ;->ʎ:I

    iput v1, v0, Lo/ﹹ;->ʝ:I

    .line 833
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    const/4 v1, 0x0

    iput v1, v0, Lo/ﹹ;->ʎ:I

    .line 834
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    const/4 v1, -0x1

    iput v1, v0, Lo/ﹹ;->Ț:I

    .line 835
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Lo/ﹹ;->ȯ:J

    .line 836
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    const/4 v1, -0x1

    iput v1, v0, Lo/ﹹ;->ƫ:I

    .line 837
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Lo/ﹹ;->Ƴ:J

    .line 838
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/ﹹ;->ﾗ:Z

    .line 840
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    invoke-virtual {v0}, Lo/ﹹ;->ᓑ()V

    .line 841
    iget-object v0, p0, Lo/ﹹ$if;->ӧ:Lo/ﹹ;

    invoke-virtual {v0}, Lo/ﹹ;->requestLayout()V

    .line 842
    return-void
.end method
