.class final Lo/ﬥ$if;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﬥ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation


# instance fields
.field private final EB:Ljava/lang/String;

.field private final EC:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lo/ﺧ;->ᐡ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ﬥ$if;->EB:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ﬥ$if;->EC:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lo/ﬥ$if;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lo/ﬥ$if;

    move-object v2, v0

    iget-object v0, p0, Lo/ﬥ$if;->EB:Ljava/lang/String;

    iget-object v1, v2, Lo/ﬥ$if;->EB:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/ﺟ;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ﬥ$if;->EC:Landroid/content/ComponentName;

    iget-object v1, v2, Lo/ﬥ$if;->EC:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lo/ﺟ;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lo/ﬥ$if;->EB:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/ﬥ$if;->EC:Landroid/content/ComponentName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/ﺟ;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/ﬥ$if;->EB:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ﬥ$if;->EC:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ﬥ$if;->EB:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public ỵ()Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Lo/ﬥ$if;->EB:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/ﬥ$if;->EB:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lo/ﬥ$if;->EC:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    :goto_0
    return-object v2
.end method
