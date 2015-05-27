.class Lo/ᔋ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᔋ$if;
    }
.end annotation


# static fields
.field private static ᵖ:Ljava/lang/reflect/Field;

.field private static ᵟ:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static ˊ(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 4

    .line 71
    sget-boolean v0, Lo/ᔋ;->ᵟ:Z

    if-nez v0, :cond_0

    .line 73
    :try_start_0
    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "mFactory2"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lo/ᔋ;->ᵖ:Ljava/lang/reflect/Field;

    .line 74
    sget-object v0, Lo/ᔋ;->ᵖ:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 75
    :catch_0
    move-exception v3

    .line 76
    const-string v0, "LayoutInflaterCompatHC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; inflation may have unexpected results."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lo/ᔋ;->ᵟ:Z

    .line 82
    :cond_0
    sget-object v0, Lo/ᔋ;->ᵖ:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 84
    :try_start_1
    sget-object v0, Lo/ᔋ;->ᵖ:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    goto :goto_1

    .line 85
    :catch_1
    move-exception v3

    .line 86
    const-string v0, "LayoutInflaterCompatHC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; inflation may have unexpected results."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_1
    :goto_1
    return-void
.end method

.method static ˊ(Landroid/view/LayoutInflater;Lo/ᕑ;)V
    .locals 3

    .line 49
    if-eqz p1, :cond_0

    new-instance v1, Lo/ᔋ$if;

    invoke-direct {v1, p1}, Lo/ᔋ$if;-><init>(Lo/ᕑ;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 51
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 53
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v2

    .line 54
    instance-of v0, v2, Landroid/view/LayoutInflater$Factory2;

    if-eqz v0, :cond_1

    .line 57
    move-object v0, v2

    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p0, v0}, Lo/ᔋ;->ˊ(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_1

    .line 60
    :cond_1
    invoke-static {p0, v1}, Lo/ᔋ;->ˊ(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 62
    :goto_1
    return-void
.end method
