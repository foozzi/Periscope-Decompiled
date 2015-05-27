.class public final Lo/ぃ;
.super Ljava/lang/Object;


# instance fields
.field private final CV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final Cc:Landroid/accounts/Account;

.field private final Ce:I

.field private final Cf:Landroid/view/View;

.field private final Cg:Ljava/lang/String;

.field private final Ch:Ljava/lang/String;

.field private final DM:Lo/ai;

.field private DN:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lo/ai;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/accounts/Account;Ljava/util/Collection<Ljava/lang/String;>;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lo/ai;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ぃ;->Cc:Landroid/accounts/Account;

    if-nez p2, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/ぃ;->CV:Ljava/util/List;

    iput-object p4, p0, Lo/ぃ;->Cf:Landroid/view/View;

    iput p3, p0, Lo/ぃ;->Ce:I

    iput-object p5, p0, Lo/ぃ;->Cg:Ljava/lang/String;

    iput-object p6, p0, Lo/ぃ;->Ch:Ljava/lang/String;

    iput-object p7, p0, Lo/ぃ;->DM:Lo/ai;

    return-void
.end method


# virtual methods
.method public ˊ(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lo/ぃ;->DN:Ljava/lang/Integer;

    return-void
.end method

.method public ᒱ()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lo/ぃ;->Cc:Landroid/accounts/Account;

    return-object v0
.end method

.method public ᖪ()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lo/ぃ;->Cc:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ぃ;->Cc:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public ᖬ()Landroid/accounts/Account;
    .locals 3

    iget-object v0, p0, Lo/ぃ;->Cc:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ぃ;->Cc:Landroid/accounts/Account;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public ᖽ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation

    iget-object v0, p0, Lo/ぃ;->CV:Ljava/util/List;

    return-object v0
.end method

.method public ᖾ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/ぃ;->Cg:Ljava/lang/String;

    return-object v0
.end method

.method public ᖿ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/ぃ;->Ch:Ljava/lang/String;

    return-object v0
.end method

.method public ᗁ()Lo/ai;
    .locals 1

    iget-object v0, p0, Lo/ぃ;->DM:Lo/ai;

    return-object v0
.end method

.method public ᘅ()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lo/ぃ;->DN:Ljava/lang/Integer;

    return-object v0
.end method
