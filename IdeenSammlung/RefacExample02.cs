namespace DefaultNamespace;

using Godot;

public partial class BadExample : Node2D
{
    
    int a = 0;
    int b = 10;
    int x = 5;
    int y = 20;
    
    public void CalculatePlayerPosition()
    {
        float z = (float)(a + b) / (x * y);
        var enemy = GetNode<Enemy>("Enemy");
        enemy.Speed = z * 10;
    }
    
    public void UpdateGameState(float delta)
    {
        var player = GetNode<Player>("Player");
        if (Input.IsActionPressed("ui_right"))
        {
            player.Position += new Vector2(1, 0);
        }
        
        if (player.Position.X > 100)
        {
            player.Position = new Vector2(0, 0);
        }
        
        GlobalScore.Score += 10 * delta;
        
        GetNode<Label>("ScoreLabel").Text = "Score: " + GlobalScore.Score;
    }
    
    public void SpawnEnemies()
    {
        for (int i = 0; i < 5; i++)
        {
            var e = new Enemy();
            e.Position = new Vector2(i * 50, i * 30);
            AddChild(e);
        }
    }
    
    public bool CheckCollision(Player p, Enemy e) => p.Position.DistanceTo(e.Position) < 15.0f && p.IsVisible && e.IsActive && !p.IsInvincible;
}

public partial class RefactorExample : Node2D
{
    //Option 02zone01_option_a
    const float speed_multiplier = 0.1
        
    //Option 02zone01_option_b    
    int speed_offset = 0;
    int base_speed = 10;
    int per_pixel_offset = 5;
    int speed_per_pixel = 20;
    
    //Option 02zone01_option_c
    int[] numbers = new []{0, 10, 5, 20}
        

    public void CalculatePlayerSpeed()
    {
    }
    
    public void CalculateEnemySpeed()
    {
    }
    
    public void CalculateEnemyPosition()
    {
    }
    
    


    public void CalculatePlayerPosition()
    {
        float z = (float)(a + b) / (x * y);
        var enemy = GetNode<Enemy>("Enemy");
        enemy.Speed = z * 10;
    }
}