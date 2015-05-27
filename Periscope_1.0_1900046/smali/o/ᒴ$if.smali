.class public final Lo/ᒴ$if;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᒴ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private Cc:Landroid/accounts/Account;

.field private final Cd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private Ce:I

.field private Cf:Landroid/view/View;

.field private Cg:Ljava/lang/String;

.field private Ch:Ljava/lang/String;

.field private final Ci:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/\u14b0<*>;Lo/\u14b0$if;>;"
        }
    .end annotation
.end field

.field private final Cj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/\u14b0<*>;Ljava/lang/Boolean;>;"
        }
    .end annotation
.end field

.field private Ck:Lo/ι;

.field private Cl:I

.field private Cm:Lo/ᒴ$ˋ;

.field private Cn:Landroid/os/Looper;

.field private Co:Lo/ᒰ$ˋ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14b0$\u02cb<+Lo/ah;Lo/ai;>;"
        }
    .end annotation
.end field

.field private final Cp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Lo/\u14b4$\u02ca;>;"
        }
    .end annotation
.end field

.field private final Cq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Lo/\u14b4$\u02cb;>;"
        }
    .end annotation
.end field

.field private Cr:Lo/ai$if;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ᒴ$if;->Cd:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ᒴ$if;->Ci:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ᒴ$if;->Cj:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lo/ᒴ$if;->Cl:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ᒴ$if;->Cp:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ᒴ$if;->Cq:Ljava/util/Set;

    new-instance v0, Lo/ai$if;

    invoke-direct {v0}, Lo/ai$if;-><init>()V

    iput-object v0, p0, Lo/ᒴ$if;->Cr:Lo/ai$if;

    iput-object p1, p0, Lo/ᒴ$if;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lo/ᒴ$if;->Cn:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ᒴ$if;->Cg:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ᒴ$if;->Ch:Ljava/lang/String;

    sget-object v0, Lo/ae;->GI:Lo/ᒰ$ˋ;

    iput-object v0, p0, Lo/ᒴ$if;->Co:Lo/ᒰ$ˋ;

    return-void
.end method

.method private দ()Lo/ᒴ;
    .locals 12

    iget-object v0, p0, Lo/ᒴ$if;->Ck:Lo/ι;

    invoke-static {v0}, Lo/ᴝ;->ˎ(Lo/ι;)Lo/ᴝ;

    move-result-object v10

    iget v0, p0, Lo/ᒴ$if;->Cl:I

    invoke-virtual {v10, v0}, Lo/ᴝ;->ᒼ(I)Lo/ᒴ;

    move-result-object v11

    if-nez v11, :cond_0

    new-instance v0, Lo/ᖨ;

    iget-object v1, p0, Lo/ᒴ$if;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/ᒴ$if;->Cn:Landroid/os/Looper;

    invoke-virtual {p0}, Lo/ᒴ$if;->ও()Lo/ぃ;

    move-result-object v3

    iget-object v4, p0, Lo/ᒴ$if;->Co:Lo/ᒰ$ˋ;

    iget-object v5, p0, Lo/ᒴ$if;->Ci:Ljava/util/Map;

    iget-object v6, p0, Lo/ᒴ$if;->Cj:Ljava/util/Map;

    iget-object v7, p0, Lo/ᒴ$if;->Cp:Ljava/util/Set;

    iget-object v8, p0, Lo/ᒴ$if;->Cq:Ljava/util/Set;

    iget v9, p0, Lo/ᒴ$if;->Cl:I

    invoke-direct/range {v0 .. v9}, Lo/ᖨ;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ᒰ$ˋ;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;I)V

    move-object v11, v0

    :cond_0
    iget v0, p0, Lo/ᒴ$if;->Cl:I

    iget-object v1, p0, Lo/ᒴ$if;->Cm:Lo/ᒴ$ˋ;

    invoke-virtual {v10, v0, v11, v1}, Lo/ᴝ;->ˊ(ILo/ᒴ;Lo/ᒴ$ˋ;)V

    return-object v11
.end method


# virtual methods
.method public ˊ(Lo/ᒰ;)Lo/ᒴ$if;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14b0<+Lo/\u14b0$if$\u02cb;>;)Lo/\u14b4$if;"
        }
    .end annotation

    iget-object v0, p0, Lo/ᒴ$if;->Ci:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lo/ᒰ;->ܐ()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    iget-object v0, p0, Lo/ᒴ$if;->Cd:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Scope;->ৰ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public ˎ(Lo/ᒴ$ˊ;)Lo/ᒴ$if;
    .locals 1

    iget-object v0, p0, Lo/ᒴ$if;->Cp:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public ˎ(Lo/ᒴ$ˋ;)Lo/ᒴ$if;
    .locals 1

    iget-object v0, p0, Lo/ᒴ$if;->Cq:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public ও()Lo/ぃ;
    .locals 8

    new-instance v0, Lo/ぃ;

    iget-object v1, p0, Lo/ᒴ$if;->Cc:Landroid/accounts/Account;

    iget-object v2, p0, Lo/ᒴ$if;->Cd:Ljava/util/Set;

    iget v3, p0, Lo/ᒴ$if;->Ce:I

    iget-object v4, p0, Lo/ᒴ$if;->Cf:Landroid/view/View;

    iget-object v5, p0, Lo/ᒴ$if;->Cg:Ljava/lang/String;

    iget-object v6, p0, Lo/ᒴ$if;->Ch:Ljava/lang/String;

    iget-object v7, p0, Lo/ᒴ$if;->Cr:Lo/ai$if;

    invoke-virtual {v7}, Lo/ai$if;->Ť()Lo/ai;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lo/ぃ;-><init>(Landroid/accounts/Account;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lo/ai;)V

    return-object v0
.end method

.method public চ()Lo/ᒴ;
    .locals 10

    iget-object v0, p0, Lo/ᒴ$if;->Ci:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "must call addApi() to add at least one API"

    invoke-static {v0, v1}, Lo/ﺧ;->ˏ(ZLjava/lang/Object;)V

    iget v0, p0, Lo/ᒴ$if;->Cl:I

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lo/ᒴ$if;->দ()Lo/ᒴ;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lo/ᖨ;

    iget-object v1, p0, Lo/ᒴ$if;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lo/ᒴ$if;->Cn:Landroid/os/Looper;

    invoke-virtual {p0}, Lo/ᒴ$if;->ও()Lo/ぃ;

    move-result-object v3

    iget-object v4, p0, Lo/ᒴ$if;->Co:Lo/ᒰ$ˋ;

    iget-object v5, p0, Lo/ᒴ$if;->Ci:Ljava/util/Map;

    iget-object v6, p0, Lo/ᒴ$if;->Cj:Ljava/util/Map;

    iget-object v7, p0, Lo/ᒴ$if;->Cp:Ljava/util/Set;

    iget-object v8, p0, Lo/ᒴ$if;->Cq:Ljava/util/Set;

    const/4 v9, -0x1

    invoke-direct/range {v0 .. v9}, Lo/ᖨ;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ᒰ$ˋ;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;I)V

    return-object v0
.end method
