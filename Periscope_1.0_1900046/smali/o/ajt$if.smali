.class Lo/ajt$if;
.super Landroid/widget/Filter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ajt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic bHP:Lo/ajt;


# direct methods
.method private constructor <init>(Lo/ajt;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lo/ajt$if;->bHP:Lo/ajt;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ajt;Lo/ajt$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lo/ajt$if;-><init>(Lo/ajt;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    .line 85
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lo/ajt$if;->bHP:Lo/ajt;

    invoke-static {v0}, Lo/ajt;->ˊ(Lo/ajt;)I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_1

    .line 92
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v0, p0, Lo/ajt$if;->bHP:Lo/ajt;

    invoke-static {v0}, Lo/ajt;->ˊ(Lo/ajt;)I

    move-result v4

    .line 95
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 96
    iget-object v0, p0, Lo/ajt$if;->bHP:Lo/ajt;

    invoke-static {v0, v5}, Lo/ajt;->ˊ(Lo/ajt;I)Ljava/lang/Object;

    move-result-object v6

    .line 97
    instance-of v0, v6, Ltv/periscope/android/api/PsUser;

    if-eqz v0, :cond_2

    .line 98
    move-object v0, v6

    check-cast v0, Ltv/periscope/android/api/PsUser;

    move-object v7, v0

    .line 99
    iget-object v0, v7, Ltv/periscope/android/api/PsUser;->bpx:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v7, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    :cond_1
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 105
    :cond_3
    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 106
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 108
    :goto_1
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .line 113
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lo/ajt$if;->bHP:Lo/ajt;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ajt;->ˊ(Lo/ajt;Ljava/util/List;)Ljava/util/List;

    .line 115
    iget-object v0, p0, Lo/ajt$if;->bHP:Lo/ajt;

    invoke-virtual {v0}, Lo/ajt;->notifyDataSetChanged()V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lo/ajt$if;->bHP:Lo/ajt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ajt;->ˊ(Lo/ajt;Ljava/util/List;)Ljava/util/List;

    .line 120
    iget-object v0, p0, Lo/ajt$if;->bHP:Lo/ajt;

    invoke-virtual {v0}, Lo/ajt;->notifyDataSetChanged()V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lo/ajt$if;->bHP:Lo/ajt;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lo/ajt;->ˊ(Lo/ajt;Ljava/util/List;)Ljava/util/List;

    .line 123
    iget-object v0, p0, Lo/ajt$if;->bHP:Lo/ajt;

    invoke-virtual {v0}, Lo/ajt;->notifyDataSetChanged()V

    .line 125
    :goto_0
    return-void
.end method
