.class public final Lo/ˎ;
.super Lo/ᐨ;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ˎ$ˊ;,
        Lo/ˎ$if;
    }
.end annotation


# static fields
.field static final ˎ:Z


# instance fields
.field public mIndex:I

.field public mName:Ljava/lang/String;

.field ʻ:Lo/ˎ$if;

.field public ʼ:I

.field ʽ:I

.field ʾ:I

.field public ʿ:I

.field public ˈ:I

.field public ˉ:Z

.field ˌ:Z

.field ˍ:Z

.field final ˏ:Lo/ˉ;

.field public ˑ:I

.field ͺ:I

.field public ـ:Ljava/lang/CharSequence;

.field public ᐝ:Lo/ˎ$if;

.field public ᐧ:I

.field public ᐨ:Ljava/lang/CharSequence;

.field ι:I

.field public ﹳ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field public ﾞ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/String;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/ˎ;->ˎ:Z

    return-void
.end method

.method public constructor <init>(Lo/ˉ;)V
    .locals 1

    .line 356
    invoke-direct {p0}, Lo/ᐨ;-><init>()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ˎ;->ˌ:Z

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lo/ˎ;->mIndex:I

    .line 357
    iput-object p1, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    .line 358
    return-void
.end method

.method private static ˊ(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .line 1073
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1074
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1076
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lo/ﹳ;->ˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .line 1056
    if-nez p0, :cond_0

    .line 1057
    const/4 v0, 0x0

    return-object v0

    .line 1059
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lo/ﹳ;->ˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Lo/ᒢ;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList<Landroid/view/View;>;Lo/\u14a2<Ljava/lang/String;Landroid/view/View;>;Landroid/view/View;)Ljava/lang/Object;"
        }
    .end annotation

    .line 1083
    if-eqz p0, :cond_0

    .line 1084
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lo/ﹳ;->ˊ(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    .line 1087
    :cond_0
    return-object p0
.end method

.method private ˊ(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lo/ˎ$ˊ;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;Z)Lo/\u02ce$\u02ca;"
        }
    .end annotation

    .line 1021
    new-instance v6, Lo/ˎ$ˊ;

    invoke-direct {v6, p0}, Lo/ˎ$ˊ;-><init>(Lo/ˎ;)V

    .line 1026
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v1, v1, Lo/ˉ;->mActivity:Lo/ι;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lo/ˎ$ˊ;->ᑊ:Landroid/view/View;

    .line 1028
    const/4 v7, 0x0

    .line 1030
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 1031
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1032
    move-object v0, p0

    move v1, v9

    move-object v2, v6

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/ˎ;->ˊ(ILo/ˎ$ˊ;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    const/4 v7, 0x1

    .line 1030
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1039
    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 1040
    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1041
    invoke-virtual {p1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p0

    move v1, v9

    move-object v2, v6

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/ˎ;->ˊ(ILo/ˎ$ˊ;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1044
    const/4 v7, 0x1

    .line 1039
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1048
    :cond_3
    if-nez v7, :cond_4

    .line 1049
    const/4 v6, 0x0

    .line 1052
    :cond_4
    return-object v6
.end method

.method private static ˊ(Ljava/util/ArrayList;Ljava/util/ArrayList;Lo/ᒢ;)Lo/ᒢ;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/ArrayList<Ljava/lang/String;>;Ljava/util/ArrayList<Ljava/lang/String;>;Lo/\u14a2<Ljava/lang/String;Landroid/view/View;>;)Lo/\u14a2<Ljava/lang/String;Landroid/view/View;>;"
        }
    .end annotation

    .line 1318
    invoke-virtual {p2}, Lo/ᒢ;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    return-object p2

    .line 1321
    :cond_0
    new-instance v1, Lo/ᒢ;

    invoke-direct {v1}, Lo/ᒢ;-><init>()V

    .line 1322
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1323
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1324
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/ᒢ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v4, v0

    .line 1325
    if-eqz v4, :cond_1

    .line 1326
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lo/ᒢ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1329
    :cond_2
    return-object v1
.end method

.method private ˊ(Lo/ˎ$ˊ;Landroid/support/v4/app/Fragment;Z)Lo/ᒢ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u02ce$\u02ca;Landroid/support/v4/app/Fragment;Z)Lo/\u14a2<Ljava/lang/String;Landroid/view/View;>;"
        }
    .end annotation

    .line 1092
    new-instance v2, Lo/ᒢ;

    invoke-direct {v2}, Lo/ᒢ;-><init>()V

    .line 1093
    iget-object v0, p0, Lo/ˎ;->ﹳ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1094
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v0}, Lo/ﹳ;->ˊ(Ljava/util/Map;Landroid/view/View;)V

    .line 1095
    if-eqz p3, :cond_0

    .line 1096
    iget-object v0, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lo/ᒢ;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1098
    :cond_0
    iget-object v0, p0, Lo/ˎ;->ﹳ:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lo/ˎ;->ˊ(Ljava/util/ArrayList;Ljava/util/ArrayList;Lo/ᒢ;)Lo/ᒢ;

    move-result-object v2

    .line 1103
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 1104
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lo/ᕀ;

    if-eqz v0, :cond_2

    .line 1105
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lo/ᕀ;

    iget-object v1, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lo/ᕀ;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1108
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v0}, Lo/ˎ;->ˊ(Lo/ˎ$ˊ;Lo/ᒢ;Z)V

    goto :goto_1

    .line 1110
    :cond_3
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Lo/ᕀ;

    if-eqz v0, :cond_4

    .line 1111
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Lo/ᕀ;

    iget-object v1, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lo/ᕀ;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1114
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v0}, Lo/ˎ;->ˋ(Lo/ˎ$ˊ;Lo/ᒢ;Z)V

    .line 1117
    :goto_1
    return-object v2
.end method

.method private ˊ(Lo/ˎ$ˊ;ZLandroid/support/v4/app/Fragment;)Lo/ᒢ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u02ce$\u02ca;ZLandroid/support/v4/app/Fragment;)Lo/\u14a2<Ljava/lang/String;Landroid/view/View;>;"
        }
    .end annotation

    .line 1288
    invoke-direct {p0, p1, p3, p2}, Lo/ˎ;->ˋ(Lo/ˎ$ˊ;Landroid/support/v4/app/Fragment;Z)Lo/ᒢ;

    move-result-object v2

    .line 1292
    if-eqz p2, :cond_1

    .line 1293
    iget-object v0, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Lo/ᕀ;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Lo/ᕀ;

    iget-object v1, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lo/ᕀ;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1297
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v2, v0}, Lo/ˎ;->ˊ(Lo/ˎ$ˊ;Lo/ᒢ;Z)V

    goto :goto_0

    .line 1299
    :cond_1
    iget-object v0, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lo/ᕀ;

    if-eqz v0, :cond_2

    .line 1300
    iget-object v0, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lo/ᕀ;

    iget-object v1, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lo/ᕀ;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1303
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v2, v0}, Lo/ˎ;->ˋ(Lo/ˎ$ˊ;Lo/ᒢ;Z)V

    .line 1305
    :goto_0
    return-object v2
.end method

.method static synthetic ˊ(Lo/ˎ;Lo/ˎ$ˊ;ZLandroid/support/v4/app/Fragment;)Lo/ᒢ;
    .locals 1

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lo/ˎ;->ˊ(Lo/ˎ$ˊ;ZLandroid/support/v4/app/Fragment;)Lo/ᒢ;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 4

    .line 417
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Lo/ˉ;

    .line 419
    if-eqz p3, :cond_1

    .line 420
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_0
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 428
    :cond_1
    if-eqz p1, :cond_3

    .line 429
    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v0, p1, :cond_2

    .line 430
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_2
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 437
    :cond_3
    new-instance v3, Lo/ˎ$if;

    invoke-direct {v3}, Lo/ˎ$if;-><init>()V

    .line 438
    iput p4, v3, Lo/ˎ$if;->ʳ:I

    .line 439
    iput-object p2, v3, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 440
    invoke-virtual {p0, v3}, Lo/ˎ;->ˊ(Lo/ˎ$if;)V

    .line 441
    return-void
.end method

.method private static ˊ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;Landroid/support/v4/app/Fragment;)V"
        }
    .end annotation

    .line 748
    if-eqz p1, :cond_0

    .line 749
    iget v1, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 750
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 752
    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 755
    :cond_0
    return-void
.end method

.method private ˊ(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;)V"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->mContainer:Lo/con;

    invoke-interface {v0}, Lo/con;->ˊ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    return-void

    .line 780
    :cond_0
    iget-object v2, p0, Lo/ˎ;->ᐝ:Lo/ˎ$if;

    .line 781
    :goto_0
    if-eqz v2, :cond_5

    .line 782
    iget v0, v2, Lo/ˎ$if;->ʳ:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 784
    :pswitch_0
    iget-object v0, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v0}, Lo/ˎ;->ˋ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 785
    goto/16 :goto_3

    .line 787
    :pswitch_1
    iget-object v3, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 788
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 789
    const/4 v4, 0x0

    :goto_1
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 790
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v5, v0

    .line 791
    if-eqz v3, :cond_1

    iget v0, v5, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v1, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v0, v1, :cond_3

    .line 792
    :cond_1
    if-ne v5, v3, :cond_2

    .line 793
    const/4 v3, 0x0

    goto :goto_2

    .line 795
    :cond_2
    invoke-static {p1, v5}, Lo/ˎ;->ˊ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 789
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 800
    :cond_4
    invoke-direct {p0, p2, v3}, Lo/ˎ;->ˋ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 801
    goto :goto_3

    .line 804
    :pswitch_2
    iget-object v0, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lo/ˎ;->ˊ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 805
    goto :goto_3

    .line 807
    :pswitch_3
    iget-object v0, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lo/ˎ;->ˊ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 808
    goto :goto_3

    .line 810
    :pswitch_4
    iget-object v0, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v0}, Lo/ˎ;->ˋ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 811
    goto :goto_3

    .line 813
    :pswitch_5
    iget-object v0, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lo/ˎ;->ˊ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 814
    goto :goto_3

    .line 816
    :pswitch_6
    iget-object v0, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v0}, Lo/ˎ;->ˋ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 820
    :goto_3
    iget-object v2, v2, Lo/ˎ$if;->ﹺ:Lo/ˎ$if;

    goto/16 :goto_0

    .line 822
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private ˊ(Landroid/view/View;Lo/ˎ$ˊ;ILjava/lang/Object;)V
    .locals 7

    .line 1361
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lo/ᐝ;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo/ᐝ;-><init>(Lo/ˎ;Landroid/view/View;Lo/ˎ$ˊ;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1369
    return-void
.end method

.method private ˊ(Lo/ˎ$ˊ;ILjava/lang/Object;)V
    .locals 4

    .line 1372
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1373
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1374
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v3, v0

    .line 1375
    iget-object v0, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, v3, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget v0, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v0, p2, :cond_1

    .line 1377
    iget-boolean v0, v3, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p1, Lo/ˎ$ˊ;->ᐣ:Ljava/util/ArrayList;

    iget-object v1, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1379
    iget-object v0, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lo/ﹳ;->ˊ(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1381
    iget-object v0, p1, Lo/ˎ$ˊ;->ᐣ:Ljava/util/ArrayList;

    iget-object v1, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1384
    :cond_0
    iget-object v0, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lo/ﹳ;->ˊ(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1386
    iget-object v0, p1, Lo/ˎ$ˊ;->ᐣ:Ljava/util/ArrayList;

    iget-object v1, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1373
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1391
    :cond_2
    return-void
.end method

.method private ˊ(Lo/ˎ$ˊ;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLo/ᒢ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u02ce$\u02ca;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLo/\u14a2<Ljava/lang/String;Landroid/view/View;>;)V"
        }
    .end annotation

    .line 1264
    if-eqz p4, :cond_0

    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lo/ᕀ;

    goto :goto_0

    :cond_0
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lo/ᕀ;

    .line 1267
    :goto_0
    if-eqz v1, :cond_1

    .line 1268
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p5}, Lo/ᒢ;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1269
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p5}, Lo/ᒢ;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1270
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lo/ᕀ;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1272
    :cond_1
    return-void
.end method

.method private ˊ(Lo/ˎ$ˊ;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u02ce$\u02ca;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList<Landroid/view/View;>;)V"
        }
    .end annotation

    .line 1233
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lo/aux;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p7

    move-object v6, p1

    move/from16 v7, p6

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lo/aux;-><init>(Lo/ˎ;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Lo/ˎ$ˊ;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1260
    return-void
.end method

.method private static ˊ(Lo/ˎ$ˊ;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u02ce$\u02ca;Ljava/util/ArrayList<Ljava/lang/String;>;Ljava/util/ArrayList<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 1408
    if-eqz p1, :cond_0

    .line 1409
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1410
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1411
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 1412
    iget-object v0, p0, Lo/ˎ$ˊ;->ᐠ:Lo/ᒢ;

    invoke-static {v0, v2, v3}, Lo/ˎ;->ˊ(Lo/ᒢ;Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1415
    :cond_0
    return-void
.end method

.method private ˊ(Lo/ˎ$ˊ;Lo/ᒢ;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u02ce$\u02ca;Lo/\u14a2<Ljava/lang/String;Landroid/view/View;>;Z)V"
        }
    .end annotation

    .line 1419
    iget-object v0, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1420
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 1421
    iget-object v0, p0, Lo/ˎ;->ﹳ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 1422
    iget-object v0, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1423
    invoke-virtual {p2, v4}, Lo/ᒢ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v5, v0

    .line 1424
    if-eqz v5, :cond_2

    .line 1425
    invoke-static {v5}, Lo/ﹳ;->ˊ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 1426
    if-eqz p3, :cond_1

    .line 1427
    iget-object v0, p1, Lo/ˎ$ˊ;->ᐠ:Lo/ᒢ;

    invoke-static {v0, v3, v6}, Lo/ˎ;->ˊ(Lo/ᒢ;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1429
    :cond_1
    iget-object v0, p1, Lo/ˎ$ˊ;->ᐠ:Lo/ᒢ;

    invoke-static {v0, v6, v3}, Lo/ˎ;->ˊ(Lo/ᒢ;Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1433
    :cond_3
    return-void
.end method

.method static synthetic ˊ(Lo/ˎ;Lo/ˎ$ˊ;ILjava/lang/Object;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lo/ˎ;->ˊ(Lo/ˎ$ˊ;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic ˊ(Lo/ˎ;Lo/ˎ$ˊ;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLo/ᒢ;)V
    .locals 0

    .line 191
    invoke-direct/range {p0 .. p5}, Lo/ˎ;->ˊ(Lo/ˎ$ˊ;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLo/ᒢ;)V

    return-void
.end method

.method static synthetic ˊ(Lo/ˎ;Lo/ᒢ;Lo/ˎ$ˊ;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1, p2}, Lo/ˎ;->ˊ(Lo/ᒢ;Lo/ˎ$ˊ;)V

    return-void
.end method

.method private static ˊ(Lo/ᒢ;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14a2<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/lang/String;)V"
        }
    .end annotation

    .line 1395
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1396
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lo/ᒢ;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1397
    invoke-virtual {p0, v1}, Lo/ᒢ;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {p0, v1, p2}, Lo/ᒢ;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1399
    return-void

    .line 1396
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1402
    :cond_1
    invoke-virtual {p0, p1, p2}, Lo/ᒢ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    :cond_2
    return-void
.end method

.method private ˊ(Lo/ᒢ;Lo/ˎ$ˊ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14a2<Ljava/lang/String;Landroid/view/View;>;Lo/\u02ce$\u02ca;)V"
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/ᒢ;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1277
    iget-object v0, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ᒢ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 1279
    if-eqz v2, :cond_0

    .line 1280
    iget-object v0, p2, Lo/ˎ$ˊ;->ᐩ:Lo/ﹳ$if;

    iput-object v2, v0, Lo/ﹳ$if;->ᵞ:Landroid/view/View;

    .line 1283
    :cond_0
    return-void
.end method

.method private ˊ(ILo/ˎ$ˊ;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILo/\u02ce$\u02ca;ZLandroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;)Z"
        }
    .end annotation

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->mContainer:Lo/con;

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lo/con;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v11, v0

    .line 1135
    if-nez v11, :cond_0

    .line 1136
    const/4 v0, 0x0

    return v0

    .line 1138
    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v12, v0

    .line 1139
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v13, v0

    .line 1141
    move/from16 v0, p3

    invoke-static {v12, v0}, Lo/ˎ;->ˊ(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v14

    .line 1142
    move/from16 v0, p3

    invoke-static {v12, v13, v0}, Lo/ˎ;->ˊ(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    .line 1144
    move/from16 v0, p3

    invoke-static {v13, v0}, Lo/ˎ;->ˋ(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    .line 1145
    if-nez v14, :cond_1

    if-nez v15, :cond_1

    if-nez v16, :cond_1

    .line 1147
    const/4 v0, 0x0

    return v0

    .line 1149
    :cond_1
    const/16 v17, 0x0

    .line 1150
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    if-eqz v15, :cond_3

    .line 1152
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v13, v2}, Lo/ˎ;->ˊ(Lo/ˎ$ˊ;Landroid/support/v4/app/Fragment;Z)Lo/ᒢ;

    move-result-object v17

    .line 1153
    move-object/from16 v0, p2

    iget-object v0, v0, Lo/ˎ$ˊ;->ᑊ:Landroid/view/View;

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    invoke-virtual/range {v17 .. v17}, Lo/ᒢ;->values()Ljava/util/Collection;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1157
    if-eqz p3, :cond_2

    iget-object v0, v13, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lo/ᕀ;

    move-object/from16 v19, v0

    goto :goto_0

    :cond_2
    iget-object v0, v12, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Lo/ᕀ;

    move-object/from16 v19, v0

    .line 1160
    :goto_0
    if-eqz v19, :cond_3

    .line 1161
    new-instance v20, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Lo/ᒢ;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1162
    new-instance v21, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Lo/ᒢ;->values()Ljava/util/Collection;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1163
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/ᕀ;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1167
    :cond_3
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    move-object/from16 v0, p2

    iget-object v0, v0, Lo/ˎ$ˊ;->ᑊ:Landroid/view/View;

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-static {v1, v13, v2, v3, v0}, Lo/ˎ;->ˊ(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Lo/ᒢ;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v16

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    if-eqz v17, :cond_5

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lo/ᒢ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object/from16 v20, v0

    .line 1174
    if-eqz v20, :cond_5

    .line 1175
    if-eqz v16, :cond_4

    .line 1176
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lo/ﹳ;->ˊ(Ljava/lang/Object;Landroid/view/View;)V

    .line 1178
    :cond_4
    if-eqz v15, :cond_5

    .line 1179
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lo/ﹳ;->ˊ(Ljava/lang/Object;Landroid/view/View;)V

    .line 1185
    :cond_5
    new-instance v20, Lo/ˏ;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lo/ˏ;-><init>(Lo/ˎ;Landroid/support/v4/app/Fragment;)V

    .line 1193
    if-eqz v15, :cond_6

    .line 1194
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v11

    move-object v3, v15

    move-object v4, v12

    move-object v5, v13

    move/from16 v6, p3

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lo/ˎ;->ˊ(Lo/ˎ$ˊ;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V

    .line 1198
    :cond_6
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    new-instance v22, Lo/ᒢ;

    invoke-direct/range {v22 .. v22}, Lo/ᒢ;-><init>()V

    .line 1201
    if-eqz p3, :cond_7

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v23

    goto :goto_1

    :cond_7
    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v23

    .line 1203
    :goto_1
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-static {v14, v0, v15, v1}, Lo/ﹳ;->ˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v24

    .line 1206
    if-eqz v24, :cond_8

    .line 1207
    move-object v0, v14

    move-object v1, v15

    move-object v2, v11

    move-object/from16 v3, v20

    move-object/from16 v4, p2

    iget-object v4, v4, Lo/ˎ$ˊ;->ᑊ:Landroid/view/View;

    move-object/from16 v5, p2

    iget-object v5, v5, Lo/ˎ$ˊ;->ᐩ:Lo/ﹳ$if;

    move-object/from16 v6, p2

    iget-object v6, v6, Lo/ˎ$ˊ;->ᐠ:Lo/ᒢ;

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lo/ﹳ;->ˊ(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Lo/ﹳ$ˊ;Landroid/view/View;Lo/ﹳ$if;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1211
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v24

    invoke-direct {v0, v11, v1, v2, v3}, Lo/ˎ;->ˊ(Landroid/view/View;Lo/ˎ$ˊ;ILjava/lang/Object;)V

    .line 1215
    move-object/from16 v0, p2

    iget-object v0, v0, Lo/ˎ$ˊ;->ᑊ:Landroid/view/View;

    move-object/from16 v1, v24

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lo/ﹳ;->ˊ(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1217
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lo/ˎ;->ˊ(Lo/ˎ$ˊ;ILjava/lang/Object;)V

    .line 1219
    move-object/from16 v0, v24

    invoke-static {v11, v0}, Lo/ﹳ;->ˊ(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1221
    move-object v0, v11

    move-object/from16 v1, p2

    iget-object v1, v1, Lo/ˎ$ˊ;->ᑊ:Landroid/view/View;

    move-object v2, v14

    move-object/from16 v3, v21

    move-object/from16 v4, v16

    move-object/from16 v5, v19

    move-object v6, v15

    move-object/from16 v7, v18

    move-object/from16 v8, v24

    move-object/from16 v9, p2

    iget-object v9, v9, Lo/ˎ$ˊ;->ᐣ:Ljava/util/ArrayList;

    move-object/from16 v10, v22

    invoke-static/range {v0 .. v10}, Lo/ﹳ;->ˊ(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1226
    :cond_8
    if-eqz v24, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private static ˋ(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .line 1064
    if-nez p0, :cond_0

    .line 1065
    const/4 v0, 0x0

    return-object v0

    .line 1067
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lo/ﹳ;->ˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ˋ(Lo/ˎ$ˊ;Landroid/support/v4/app/Fragment;Z)Lo/ᒢ;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u02ce$\u02ca;Landroid/support/v4/app/Fragment;Z)Lo/\u14a2<Ljava/lang/String;Landroid/view/View;>;"
        }
    .end annotation

    .line 1343
    new-instance v2, Lo/ᒢ;

    invoke-direct {v2}, Lo/ᒢ;-><init>()V

    .line 1344
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 1345
    if-eqz v3, :cond_1

    .line 1346
    iget-object v0, p0, Lo/ˎ;->ﹳ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1347
    invoke-static {v2, v3}, Lo/ﹳ;->ˊ(Ljava/util/Map;Landroid/view/View;)V

    .line 1348
    if-eqz p3, :cond_0

    .line 1349
    iget-object v0, p0, Lo/ˎ;->ﹳ:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lo/ˎ;->ˊ(Ljava/util/ArrayList;Ljava/util/ArrayList;Lo/ᒢ;)Lo/ᒢ;

    move-result-object v2

    goto :goto_0

    .line 1352
    :cond_0
    iget-object v0, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lo/ᒢ;->retainAll(Ljava/util/Collection;)Z

    .line 1356
    :cond_1
    :goto_0
    return-object v2
.end method

.method private ˋ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;Landroid/support/v4/app/Fragment;)V"
        }
    .end annotation

    .line 758
    if-eqz p2, :cond_0

    .line 759
    iget v0, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 760
    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 764
    :cond_0
    return-void
.end method

.method private ˋ(Lo/ˎ$ˊ;Lo/ᒢ;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u02ce$\u02ca;Lo/\u14a2<Ljava/lang/String;Landroid/view/View;>;Z)V"
        }
    .end annotation

    .line 1437
    invoke-virtual {p2}, Lo/ᒢ;->size()I

    move-result v1

    .line 1438
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1439
    invoke-virtual {p2, v2}, Lo/ᒢ;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 1440
    invoke-virtual {p2, v2}, Lo/ᒢ;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/ﹳ;->ˊ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 1441
    if-eqz p3, :cond_0

    .line 1442
    iget-object v0, p1, Lo/ˎ$ˊ;->ᐠ:Lo/ᒢ;

    invoke-static {v0, v3, v4}, Lo/ˎ;->ˊ(Lo/ᒢ;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1444
    :cond_0
    iget-object v0, p1, Lo/ˎ$ˊ;->ᐠ:Lo/ᒢ;

    invoke-static {v0, v4, v3}, Lo/ˎ;->ˊ(Lo/ᒢ;Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1447
    :cond_1
    return-void
.end method


# virtual methods
.method public commit()I
    .locals 1

    .line 616
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ˎ;->ˊ(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    .line 620
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ˎ;->ˊ(Z)I

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lo/ˎ;->ˊ(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 261
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 973
    iget-object v0, p0, Lo/ˎ;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 14

    .line 642
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_0
    iget-boolean v0, p0, Lo/ˎ;->ˉ:Z

    if-eqz v0, :cond_1

    .line 645
    iget v0, p0, Lo/ˎ;->mIndex:I

    if-gez v0, :cond_1

    .line 646
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ˎ;->ˊ(I)V

    .line 652
    const/4 v3, 0x0

    .line 653
    const/4 v4, 0x0

    .line 654
    const/4 v5, 0x0

    .line 655
    sget-boolean v0, Lo/ˎ;->ˎ:Z

    if-eqz v0, :cond_2

    .line 656
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 657
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 659
    invoke-direct {p0, v4, v5}, Lo/ˎ;->ˊ(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 661
    const/4 v0, 0x0

    invoke-direct {p0, v4, v5, v0}, Lo/ˎ;->ˊ(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lo/ˎ$ˊ;

    move-result-object v3

    .line 664
    :cond_2
    if-eqz v3, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    iget v6, p0, Lo/ˎ;->ˈ:I

    .line 665
    :goto_0
    if-eqz v3, :cond_4

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    iget v7, p0, Lo/ˎ;->ʿ:I

    .line 666
    :goto_1
    iget-object v8, p0, Lo/ˎ;->ᐝ:Lo/ˎ$if;

    .line 667
    :goto_2
    if-eqz v8, :cond_f

    .line 668
    if-eqz v3, :cond_5

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    iget v9, v8, Lo/ˎ$if;->ˆ:I

    .line 669
    :goto_3
    if-eqz v3, :cond_6

    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    iget v10, v8, Lo/ˎ$if;->ˇ:I

    .line 670
    :goto_4
    iget v0, v8, Lo/ˎ$if;->ʳ:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 672
    :pswitch_0
    iget-object v11, v8, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 673
    iput v9, v11, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 674
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Lo/ˉ;->ˎ(Landroid/support/v4/app/Fragment;Z)V

    .line 675
    goto/16 :goto_8

    .line 677
    :pswitch_1
    iget-object v11, v8, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 678
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 679
    const/4 v12, 0x0

    :goto_5
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_d

    .line 680
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->ᵀ:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v13, v0

    .line 681
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OP_REPLACE: adding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_7
    if-eqz v11, :cond_8

    iget v0, v13, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v1, v11, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v0, v1, :cond_c

    .line 684
    :cond_8
    if-ne v13, v11, :cond_9

    .line 685
    const/4 v11, 0x0

    iput-object v11, v8, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    goto :goto_6

    .line 687
    :cond_9
    iget-object v0, v8, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    .line 690
    :cond_a
    iget-object v0, v8, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    iput v10, v13, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 692
    iget-boolean v0, p0, Lo/ˎ;->ˉ:Z

    if-eqz v0, :cond_b

    .line 693
    iget v0, v13, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v13, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 694
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v13, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_b
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-virtual {v0, v13, v7, v6}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;II)V

    .line 679
    :cond_c
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 702
    :cond_d
    if-eqz v11, :cond_e

    .line 703
    iput v9, v11, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 704
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Lo/ˉ;->ˎ(Landroid/support/v4/app/Fragment;Z)V

    .line 706
    :cond_e
    goto/16 :goto_8

    .line 708
    :pswitch_2
    iget-object v11, v8, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 709
    iput v10, v11, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 710
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-virtual {v0, v11, v7, v6}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;II)V

    .line 711
    goto/16 :goto_8

    .line 713
    :pswitch_3
    iget-object v11, v8, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 714
    iput v10, v11, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 715
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-virtual {v0, v11, v7, v6}, Lo/ˉ;->ˋ(Landroid/support/v4/app/Fragment;II)V

    .line 716
    goto :goto_8

    .line 718
    :pswitch_4
    iget-object v11, v8, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 719
    iput v9, v11, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 720
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-virtual {v0, v11, v7, v6}, Lo/ˉ;->ˎ(Landroid/support/v4/app/Fragment;II)V

    .line 721
    goto :goto_8

    .line 723
    :pswitch_5
    iget-object v11, v8, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 724
    iput v10, v11, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 725
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-virtual {v0, v11, v7, v6}, Lo/ˉ;->ˏ(Landroid/support/v4/app/Fragment;II)V

    .line 726
    goto :goto_8

    .line 728
    :pswitch_6
    iget-object v11, v8, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 729
    iput v9, v11, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 730
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-virtual {v0, v11, v7, v6}, Lo/ˉ;->ᐝ(Landroid/support/v4/app/Fragment;II)V

    .line 731
    goto :goto_8

    .line 733
    :goto_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lo/ˎ$if;->ʳ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :goto_8
    iget-object v8, v8, Lo/ˎ$if;->ﹺ:Lo/ˎ$if;

    .line 738
    goto/16 :goto_2

    .line 740
    :cond_f
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v1, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget v1, v1, Lo/ˉ;->ː:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v7, v6, v2}, Lo/ˉ;->ˊ(IIIZ)V

    .line 742
    iget-boolean v0, p0, Lo/ˎ;->ˉ:Z

    if-eqz v0, :cond_10

    .line 743
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-virtual {v0, p0}, Lo/ˉ;->ˋ(Lo/ˎ;)V

    .line 745
    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 245
    const-string v0, "BackStackEntry{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget v0, p0, Lo/ˎ;->mIndex:I

    if-ltz v0, :cond_0

    .line 248
    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget v0, p0, Lo/ˎ;->mIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    :cond_0
    iget-object v0, p0, Lo/ˎ;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 252
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v0, p0, Lo/ˎ;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_1
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Z)I
    .locals 5

    .line 624
    iget-boolean v0, p0, Lo/ˎ;->ˍ:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 626
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v3, Lo/ᵙ;

    const-string v0, "FragmentManager"

    invoke-direct {v3, v0}, Lo/ᵙ;-><init>(Ljava/lang/String;)V

    .line 628
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 629
    const-string v0, "  "

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v4, v2}, Lo/ˎ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 631
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ˎ;->ˍ:Z

    .line 632
    iget-boolean v0, p0, Lo/ˎ;->ˉ:Z

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-virtual {v0, p0}, Lo/ˉ;->ˊ(Lo/ˎ;)I

    move-result v0

    iput v0, p0, Lo/ˎ;->mIndex:I

    goto :goto_0

    .line 635
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lo/ˎ;->mIndex:I

    .line 637
    :goto_0
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-virtual {v0, p0, p1}, Lo/ˉ;->ˊ(Ljava/lang/Runnable;Z)V

    .line 638
    iget v0, p0, Lo/ˎ;->mIndex:I

    return v0
.end method

.method public ˊ(ZLo/ˎ$ˊ;Landroid/util/SparseArray;Landroid/util/SparseArray;)Lo/ˎ$ˊ;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZLo/\u02ce$\u02ca;Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;)Lo/\u02ce$\u02ca;"
        }
    .end annotation

    .line 875
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 876
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popFromBackStack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v4, Lo/ᵙ;

    const-string v0, "FragmentManager"

    invoke-direct {v4, v0}, Lo/ᵙ;-><init>(Ljava/lang/String;)V

    .line 878
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 879
    const-string v0, "  "

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v5, v2}, Lo/ˎ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 882
    :cond_0
    sget-boolean v0, Lo/ˎ;->ˎ:Z

    if-eqz v0, :cond_3

    .line 883
    if-nez p2, :cond_2

    .line 884
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 885
    :cond_1
    move-object/from16 v0, p4

    const/4 v1, 0x1

    invoke-direct {p0, p3, v0, v1}, Lo/ˎ;->ˊ(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lo/ˎ$ˊ;

    move-result-object p2

    goto :goto_0

    .line 887
    :cond_2
    if-nez p1, :cond_3

    .line 888
    iget-object v0, p0, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/ˎ;->ﹳ:Ljava/util/ArrayList;

    invoke-static {p2, v0, v1}, Lo/ˎ;->ˊ(Lo/ˎ$ˊ;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 892
    :cond_3
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lo/ˎ;->ˊ(I)V

    .line 894
    if-eqz p2, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    iget v4, p0, Lo/ˎ;->ˈ:I

    .line 895
    :goto_1
    if-eqz p2, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    iget v5, p0, Lo/ˎ;->ʿ:I

    .line 896
    :goto_2
    iget-object v6, p0, Lo/ˎ;->ʻ:Lo/ˎ$if;

    .line 897
    :goto_3
    if-eqz v6, :cond_a

    .line 898
    if-eqz p2, :cond_6

    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    iget v7, v6, Lo/ˎ$if;->ˡ:I

    .line 899
    :goto_4
    if-eqz p2, :cond_7

    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    iget v8, v6, Lo/ˎ$if;->ˮ:I

    .line 900
    :goto_5
    iget v0, v6, Lo/ˎ$if;->ʳ:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 902
    :pswitch_0
    iget-object v9, v6, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 903
    iput v8, v9, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 904
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-static {v5}, Lo/ˉ;->ᐝ(I)I

    move-result v1

    invoke-virtual {v0, v9, v1, v4}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;II)V

    .line 906
    goto/16 :goto_8

    .line 908
    :pswitch_1
    iget-object v9, v6, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 909
    if-eqz v9, :cond_8

    .line 910
    iput v8, v9, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 911
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-static {v5}, Lo/ˉ;->ᐝ(I)I

    move-result v1

    invoke-virtual {v0, v9, v1, v4}, Lo/ˉ;->ˊ(Landroid/support/v4/app/Fragment;II)V

    .line 914
    :cond_8
    iget-object v0, v6, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 915
    const/4 v10, 0x0

    :goto_6
    iget-object v0, v6, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_9

    .line 916
    iget-object v0, v6, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v11, v0

    .line 917
    iput v7, v11, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 918
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Lo/ˉ;->ˎ(Landroid/support/v4/app/Fragment;Z)V

    .line 915
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 921
    :cond_9
    goto/16 :goto_8

    .line 923
    :pswitch_2
    iget-object v9, v6, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 924
    iput v7, v9, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 925
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lo/ˉ;->ˎ(Landroid/support/v4/app/Fragment;Z)V

    .line 926
    goto/16 :goto_8

    .line 928
    :pswitch_3
    iget-object v9, v6, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 929
    iput v7, v9, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 930
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-static {v5}, Lo/ˉ;->ᐝ(I)I

    move-result v1

    invoke-virtual {v0, v9, v1, v4}, Lo/ˉ;->ˎ(Landroid/support/v4/app/Fragment;II)V

    .line 932
    goto/16 :goto_8

    .line 934
    :pswitch_4
    iget-object v9, v6, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 935
    iput v8, v9, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 936
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-static {v5}, Lo/ˉ;->ᐝ(I)I

    move-result v1

    invoke-virtual {v0, v9, v1, v4}, Lo/ˉ;->ˋ(Landroid/support/v4/app/Fragment;II)V

    .line 938
    goto :goto_8

    .line 940
    :pswitch_5
    iget-object v9, v6, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 941
    iput v7, v9, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 942
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-static {v5}, Lo/ˉ;->ᐝ(I)I

    move-result v1

    invoke-virtual {v0, v9, v1, v4}, Lo/ˉ;->ᐝ(Landroid/support/v4/app/Fragment;II)V

    .line 944
    goto :goto_8

    .line 946
    :pswitch_6
    iget-object v9, v6, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 947
    iput v7, v9, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 948
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    invoke-static {v5}, Lo/ˉ;->ᐝ(I)I

    move-result v1

    invoke-virtual {v0, v9, v1, v4}, Lo/ˉ;->ˏ(Landroid/support/v4/app/Fragment;II)V

    .line 950
    goto :goto_8

    .line 952
    :goto_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lo/ˎ$if;->ʳ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :goto_8
    iget-object v6, v6, Lo/ˎ$if;->ｰ:Lo/ˎ$if;

    .line 957
    goto/16 :goto_3

    .line 959
    :cond_a
    if-eqz p1, :cond_b

    .line 960
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v1, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget v1, v1, Lo/ˉ;->ː:I

    invoke-static {v5}, Lo/ˉ;->ᐝ(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lo/ˉ;->ˊ(IIIZ)V

    .line 962
    const/4 p2, 0x0

    .line 965
    :cond_b
    iget v0, p0, Lo/ˎ;->mIndex:I

    if-ltz v0, :cond_c

    .line 966
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget v1, p0, Lo/ˎ;->mIndex:I

    invoke-virtual {v0, v1}, Lo/ˉ;->ˏ(I)V

    .line 967
    const/4 v0, -0x1

    iput v0, p0, Lo/ˎ;->mIndex:I

    .line 969
    :cond_c
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public ˊ(Landroid/support/v4/app/Fragment;)Lo/ᐨ;
    .locals 2

    .line 457
    new-instance v1, Lo/ˎ$if;

    invoke-direct {v1}, Lo/ˎ$if;-><init>()V

    .line 458
    const/4 v0, 0x3

    iput v0, v1, Lo/ˎ$if;->ʳ:I

    .line 459
    iput-object p1, v1, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 460
    invoke-virtual {p0, v1}, Lo/ˎ;->ˊ(Lo/ˎ$if;)V

    .line 462
    return-object p0
.end method

.method public ˊ(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Lo/ᐨ;
    .locals 2

    .line 402
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lo/ˎ;->ˊ(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 403
    return-object p0
.end method

.method public ˊ(I)V
    .locals 6

    .line 591
    iget-boolean v0, p0, Lo/ˎ;->ˉ:Z

    if-nez v0, :cond_0

    .line 592
    return-void

    .line 594
    :cond_0
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_1
    iget-object v3, p0, Lo/ˎ;->ᐝ:Lo/ˎ$if;

    .line 597
    :goto_0
    if-eqz v3, :cond_5

    .line 598
    iget-object v0, v3, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, v3, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 600
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_2
    iget-object v0, v3, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 604
    iget-object v0, v3, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    :goto_1
    if-ltz v4, :cond_4

    .line 605
    iget-object v0, v3, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v5, v0

    .line 606
    iget v0, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v0, p1

    iput v0, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 607
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 611
    :cond_4
    iget-object v3, v3, Lo/ˎ$if;->ﹺ:Lo/ˎ$if;

    goto/16 :goto_0

    .line 613
    :cond_5
    return-void
.end method

.method public ˊ(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7

    .line 264
    if-eqz p3, :cond_8

    .line 265
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lo/ˎ;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lo/ˎ;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 267
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lo/ˎ;->ˍ:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 268
    iget v0, p0, Lo/ˎ;->ʿ:I

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    iget v0, p0, Lo/ˎ;->ʿ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    iget v0, p0, Lo/ˎ;->ˈ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    :cond_0
    iget v0, p0, Lo/ˎ;->ʽ:I

    if-nez v0, :cond_1

    iget v0, p0, Lo/ˎ;->ͺ:I

    if-eqz v0, :cond_2

    .line 275
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    iget v0, p0, Lo/ˎ;->ʽ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    iget v0, p0, Lo/ˎ;->ͺ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    :cond_2
    iget v0, p0, Lo/ˎ;->ι:I

    if-nez v0, :cond_3

    iget v0, p0, Lo/ˎ;->ʾ:I

    if-eqz v0, :cond_4

    .line 281
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget v0, p0, Lo/ˎ;->ι:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    iget v0, p0, Lo/ˎ;->ʾ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    :cond_4
    iget v0, p0, Lo/ˎ;->ˑ:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/ˎ;->ـ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 287
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    iget v0, p0, Lo/ˎ;->ˑ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lo/ˎ;->ـ:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 292
    :cond_6
    iget v0, p0, Lo/ˎ;->ᐧ:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/ˎ;->ᐨ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 293
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    iget v0, p0, Lo/ˎ;->ᐧ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lo/ˎ;->ᐨ:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 300
    :cond_8
    iget-object v0, p0, Lo/ˎ;->ᐝ:Lo/ˎ$if;

    if-eqz v0, :cond_10

    .line 301
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    iget-object v3, p0, Lo/ˎ;->ᐝ:Lo/ˎ$if;

    .line 304
    const/4 v4, 0x0

    .line 305
    :goto_0
    if-eqz v3, :cond_10

    .line 307
    iget v0, v3, Lo/ˎ$if;->ʳ:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 308
    :pswitch_0
    const-string v5, "NULL"

    goto :goto_2

    .line 309
    :pswitch_1
    const-string v5, "ADD"

    goto :goto_2

    .line 310
    :pswitch_2
    const-string v5, "REPLACE"

    goto :goto_2

    .line 311
    :pswitch_3
    const-string v5, "REMOVE"

    goto :goto_2

    .line 312
    :pswitch_4
    const-string v5, "HIDE"

    goto :goto_2

    .line 313
    :pswitch_5
    const-string v5, "SHOW"

    goto :goto_2

    .line 314
    :pswitch_6
    const-string v5, "DETACH"

    goto :goto_2

    .line 315
    :pswitch_7
    const-string v5, "ATTACH"

    goto :goto_2

    .line 316
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lo/ˎ$if;->ʳ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    :goto_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Op #"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 319
    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 321
    if-eqz p3, :cond_c

    .line 322
    iget v0, v3, Lo/ˎ$if;->ˆ:I

    if-nez v0, :cond_9

    iget v0, v3, Lo/ˎ$if;->ˇ:I

    if-eqz v0, :cond_a

    .line 323
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    iget v0, v3, Lo/ˎ$if;->ˆ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    iget v0, v3, Lo/ˎ$if;->ˇ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    :cond_a
    iget v0, v3, Lo/ˎ$if;->ˡ:I

    if-nez v0, :cond_b

    iget v0, v3, Lo/ˎ$if;->ˮ:I

    if-eqz v0, :cond_c

    .line 329
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget v0, v3, Lo/ˎ$if;->ˡ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    iget v0, v3, Lo/ˎ$if;->ˮ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    :cond_c
    iget-object v0, v3, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, v3, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 336
    const/4 v6, 0x0

    :goto_3
    iget-object v0, v3, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_f

    .line 337
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget-object v0, v3, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 339
    const-string v0, "Removed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 341
    :cond_d
    if-nez v6, :cond_e

    .line 342
    const-string v0, "Removed:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    :cond_e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 345
    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    :goto_4
    iget-object v0, v3, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 336
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 350
    :cond_f
    iget-object v3, v3, Lo/ˎ$if;->ﹺ:Lo/ˎ$if;

    .line 351
    add-int/lit8 v4, v4, 0x1

    .line 352
    goto/16 :goto_0

    .line 354
    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public ˊ(Lo/ˎ$if;)V
    .locals 2

    .line 387
    iget-object v0, p0, Lo/ˎ;->ᐝ:Lo/ˎ$if;

    if-nez v0, :cond_0

    .line 388
    iput-object p1, p0, Lo/ˎ;->ʻ:Lo/ˎ$if;

    iput-object p1, p0, Lo/ˎ;->ᐝ:Lo/ˎ$if;

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lo/ˎ;->ʻ:Lo/ˎ$if;

    iput-object v0, p1, Lo/ˎ$if;->ｰ:Lo/ˎ$if;

    .line 391
    iget-object v0, p0, Lo/ˎ;->ʻ:Lo/ˎ$if;

    iput-object p1, v0, Lo/ˎ$if;->ﹺ:Lo/ˎ$if;

    .line 392
    iput-object p1, p0, Lo/ˎ;->ʻ:Lo/ˎ$if;

    .line 394
    :goto_0
    iget v0, p0, Lo/ˎ;->ʽ:I

    iput v0, p1, Lo/ˎ$if;->ˆ:I

    .line 395
    iget v0, p0, Lo/ˎ;->ͺ:I

    iput v0, p1, Lo/ˎ$if;->ˇ:I

    .line 396
    iget v0, p0, Lo/ˎ;->ι:I

    iput v0, p1, Lo/ˎ$if;->ˡ:I

    .line 397
    iget v0, p0, Lo/ˎ;->ʾ:I

    iput v0, p1, Lo/ˎ$if;->ˮ:I

    .line 398
    iget v0, p0, Lo/ˎ;->ʼ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ˎ;->ʼ:I

    .line 399
    return-void
.end method

.method public ˋ(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;)V"
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lo/ˎ;->ˏ:Lo/ˉ;

    iget-object v0, v0, Lo/ˉ;->mContainer:Lo/con;

    invoke-interface {v0}, Lo/con;->ˊ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    return-void

    .line 838
    :cond_0
    iget-object v2, p0, Lo/ˎ;->ᐝ:Lo/ˎ$if;

    .line 839
    :goto_0
    if-eqz v2, :cond_2

    .line 840
    iget v0, v2, Lo/ˎ$if;->ʳ:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 842
    :pswitch_0
    iget-object v0, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lo/ˎ;->ˊ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 843
    goto :goto_2

    .line 845
    :pswitch_1
    iget-object v0, v2, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, v2, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-ltz v3, :cond_1

    .line 847
    iget-object v0, v2, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v0}, Lo/ˎ;->ˋ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 846
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 850
    :cond_1
    iget-object v0, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lo/ˎ;->ˊ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 851
    goto :goto_2

    .line 853
    :pswitch_2
    iget-object v0, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v0}, Lo/ˎ;->ˋ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 854
    goto :goto_2

    .line 856
    :pswitch_3
    iget-object v0, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v0}, Lo/ˎ;->ˋ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 857
    goto :goto_2

    .line 859
    :pswitch_4
    iget-object v0, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lo/ˎ;->ˊ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 860
    goto :goto_2

    .line 862
    :pswitch_5
    iget-object v0, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, v0}, Lo/ˎ;->ˋ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 863
    goto :goto_2

    .line 865
    :pswitch_6
    iget-object v0, v2, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lo/ˎ;->ˊ(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 869
    :goto_2
    iget-object v2, v2, Lo/ˎ$if;->ﹺ:Lo/ˎ$if;

    goto/16 :goto_0

    .line 871
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
